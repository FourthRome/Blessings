#pragma once

// Gurantees: no other program works with that terminal (changes its mode, writes,
// reads

#include <termios.h>
#include <cstdio>
#include <queue>

#include "../../additional_structs.hpp"
#include "../../error.hpp"
#include "../../terminal_io.hpp"

namespace blessings {
  template <typename InS, typename OutS, typename Property>
  class TerminalIOANSILinux : public TerminalIO<InS, OutS, Property> {
    bool inited;
    int nonCanonicalMode;
    int echoInhibited;

    termios storedSettings;

    int fd;
    FILE* file;

    Property currentProperty;

    TerminalIOANSILinux(const TerminalIOANSILinux&);
    TerminalIOANSILinux& operator=(const TerminalIOANSILinux&);
  public:
    class Error : public BlessingsError {};
    class InitError : public Error {};
    class ReInitAttempt : public Error {};
    class IOError : public Error {};
    class DeviceError : public Error {};
    class BadMode : public Error {};
    class ArgumentError : public Error {};  //List of errors below needs fixin'
    class SymbolCorruption : public Error {}; //Hui znaet, nado li ot nego nasledovat' EOFError
    class InputEnd; //Syntax Sugar: it's EOF actually
    class WrongEncoding; //Is this one being thrown only when encoding is wrong?
    class NoSymbolYet : public Error {};  //When getSymbol fails to find anything

    TerminalIOANSILinux();

    ~TerminalIOANSILinux();

    void init(std::string path="");
    void disconnect();

    //Device info
    Resolution getResolution();

    //IO
    void print(OutS, const Property&);
    void print(OutS);

    InS getSymbol();
    std::queue<InS> getSymbol(int n);
    void clearInputBuffer();
    bool checkInput();

    //Screen state
    void clearScreen();

    void newLine();

    void moveCursor(int x, int y);
    void moveCursorTo(int x, int y);

    void hideCursor();
    void showCursor();

    void saveCursorPos();
    void restoreCursorPos();

    void setSGR(const Property&);
    void resetSGR();

    //Terminal state
    void setNonCanonicalMode();
    void setCanonicalMode();
    void setEchoInhibition();
    void setEchoForward();

    void resetDeviceMode();

    int isNonCanonical() {return nonCanonicalMode;};
    int isEchoInhibited() {return echoInhibited;};

    bool isInited() {return inited;};
  };

  template <typename InS, typename OutS, typename Property>
  class TerminalIOANSILinux<InS, OutS, Property>::InputEnd : public Error {
  public:
    std::queue<InS> whatLeft;

    InputEnd() {};
    InputEnd(const std::queue<InS>& initQueue) : whatLeft(initQueue) {};
  };

  template <typename InS, typename OutS, typename Property>
  class TerminalIOANSILinux<InS, OutS, Property>::WrongEncoding : public Error {
  public:
    std::queue<InS> whatLeft;

    WrongEncoding() {};
    WrongEncoding(const std::queue<InS>& initQueue) : whatLeft(initQueue) {}
  };
}
