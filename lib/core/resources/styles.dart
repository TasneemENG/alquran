import 'package:flutter/material.dart';

import 'colors.dart';

abstract class TextStyles {
  static const s40w600white = TextStyle(
    fontFamily: 'ElMessiri',
    fontSize: 40,
    fontWeight: FontWeight.w600,
    color: TextColors.white,
  );
  static const s32w600white = TextStyle(
    fontFamily: 'ElMessiri',
    fontSize: 32,
    fontWeight: FontWeight.w600,
    color: TextColors.white,
  );
  static const s24w400white = TextStyle(
    fontFamily: 'ElMessiri',
    fontSize: 24,
    fontWeight: FontWeight.w400,
    color: TextColors.white,
  );
  static const s20w400solidgray = TextStyle(
    fontFamily: 'ElMessiri',
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: TextColors.solidGray,
  );
  static const s20w400brwon = TextStyle(
    fontFamily: 'ElMessiri',
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: TextColors.Brown,
  );
}

