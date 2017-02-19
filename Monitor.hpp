#pragma once

#include <utility>

#include "AdditionalStructs.hpp"
<<<<<<< HEAD
#include "TerminalIO.hpp"
#include "Symbol.hpp"


namespace Blessings_ns {
=======
#include "ReadStream.hpp"
#include "WriteStream.hpp"
#include "Symbol/Symbol.hpp"

namespace Blessings {
>>>>>>> Dinya

	template <class Symbol>
  struct MonitorCell {
  	Symbol symb;
  	Property* prop;
  };


  class MonitorGeneral {
	public:

		virtual void resetPointer()=0;
    virtual MonitorCell slideCell()=0;
    virtual void pushCell(MonitorCell)=0;

		virtual void update()=0;
		virtual void clearScreen()=0;
    virtual void printPage()=0;

    virtual void moveCursor(int x, int y)=0;
    virtual GridPos getCursorPos()=0;

    virtual void hideCursor()=0;
    virtual void showCursor()=0;

    virtual void saveCursorPos()=0;
    virtual void restoreCursorPos()=0;

    virtual MonitorResolution getResolution()=0;

    virtual int boldSupported()=0;
    virtual int italicsSupported()=0;

    virtual PropertyType getPropertyType()=0;
  };


  template <class InputSymbol, class OutputSymbol>
  class Monitor : public MonitorGeneral {
  public:
    Monitor(TerminalIO Term, int MaxSize);

    Monitor(const Monitor&);
    Monitor& operator=(const Monitor&);
    ~Monitor();

    class Error;

<<<<<<< HEAD
		MonitorCell& operator[] (int p);
    MonitorCell operator[] (int p) const;
    MonitorCell& operator()(int x, int y);
    MonitorCell operator()(int x, int y) const;

    void resetPointer();
    MonitorCell slideCell();
    void pushCell(MonitorCell);
=======
    std::pair<OutputSymbol, Property*>& operator()(int x, int y);
    std::pair<OutputSymbol, Property*> operator()(int x, int y) const;
>>>>>>> Dinya

    void update();
		void clearScreen();
    void printPage();

    InputSymbol getSym();

    void printSymbol(OutputSymbol);

    void moveCursor(int x, int y);
    GridPos getCursorPos();

    void hideCursor();
    void showCursor();

    void saveCursorPos();
    void restoreCursorPos();

    MonitorResolution getResolution();

    int boldSupported();         // Must be rewrited
    int italicsSupported();

    PropertyType getPropertyType();

	protected:
		MonitorCell * Monitor::grid;
		TerminalIO Monitor::termIO;
		int maxSize;
		int stopPosition;
		MonitorResolution res;
		int pointer;
		GlidPos cursorPos;
		GridPos cursorSlot;
  };

}
