import 'package:flutter/material.dart';

class SizeConfig {
  static double _screenWidthSize = 0;
  static double _screenHeightSize = 0;
  static double _currentScreenWidth = 0;
  static double _currentScreenHeight = 0;
  static bool isPortrait = true;

  void init(BoxConstraints constraints, Orientation orientation) {
    if (orientation == Orientation.portrait) {
      _screenWidthSize = constraints.maxWidth / 100;
      _screenHeightSize = constraints.maxHeight / 100;
      isPortrait = true;
      _currentScreenWidth = getSizeWidth();
      _currentScreenHeight = getSizeHeight();
    } else {
      _screenWidthSize = constraints.maxWidth / 100;
      _screenHeightSize = constraints.maxHeight / 100;
      isPortrait = false;
    }
  }

  static double getScreenWidth() {
    return _screenWidthSize * 100;
  }

  static double getScreenHeight() {
    return _screenHeightSize * 100;
  }

  static double getSizeWidth() {
    for (int i = 100; i < 1400; i += 10) {
      if (getScreenWidth() >= i && getScreenWidth() < i + 10) {
        return i / 100;
      }
    }
    return getScreenWidth() / 100;
  }

  static double getSizeHeight() {
    for (int i = 200; i < 1000; i += 10) {
      if (getScreenHeight() >= i && getScreenHeight() < i + 10) {
        return i / 100;
      }
    }
    return getScreenHeight() / 100;
  }

  static dynamic setSizeHorizontally(dynamic size) {
    return (size / _currentScreenWidth) * _screenWidthSize;
  }

  static dynamic setSizeVertically(dynamic size) {
    return (size / _currentScreenHeight) * _screenHeightSize;
  }
}
