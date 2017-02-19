#pragma once

#include <string>
#include <cstdint>

#include "../Error.hpp"

namespace Blessings {
  template <class SymbolType>
  SymbolType getSym(FILE*);


  //Color
  struct ColorANSI {
    enum ColorT {BLACK=0, RED=1, GREEN=2, YELLOW=3, BLUE=4, MAGENTA=5, CYAN=6, WHITE=7};
    ColorT color;

    ColorANSI(ColorT col=BLACK) : color(col) {};

    static ColorANSI DefaultColor;
  };


  struct ColorRGB {
    uint8_t r;
    uint8_t g;
    uint8_t b;

    class Error;
    class InitError;

    ColorRGB(int red=0, int green=0, int blue=0);

    static const ColorRGB WHITE;
    static const ColorRGB BLACK;

    static ColorRGB DefaultColor;
  };


  class ColorRGB::Error : public BlessingsError {};
  class ColorRGB::InitError : public ColorRGB::Error {};


  //Property
  struct Property {};

  struct PropertyANSI : public Property {
    ColorANSI color;
    bool italics;
    bool bold;
  };


  struct PropertyType {
    class Error;
    class InitError;

    enum Type {OTHER=0, ANSI=1};

    int type;

    PropertyType(Type t);
    PropertyType(int t);

    Type getType();
  };


  class PropertyType::Error : public BlessingsError {};
  class PropertyType::InitError : PropertyType::Error {};
}
