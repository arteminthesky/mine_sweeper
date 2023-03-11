import 'package:flutter/material.dart';

class MineSweeperFonts {
  MineSweeperFonts._();

  static const String primary = 'MineSweeper';
}

class MineSweeperTypography {
  MineSweeperTypography._();

  static TextStyle get digitTextStyle => TextStyle(
        fontFamily: MineSweeperFonts.primary,
        fontSize: 14,
        fontWeight: FontWeight.w600,
      );
}
