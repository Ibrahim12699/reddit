import 'package:flutter/material.dart';
import 'color_manager.dart';

import 'font_manager.dart';

TextStyle _getTextStyle(
    double fontSize, FontWeight fontWeight, Color color, double? height) {
  return TextStyle(
      fontSize: fontSize,
      fontFamily: FontConstants.defaultFontFamily,
      color: color,
      fontWeight: fontWeight,
      height: height ?? 1);
}

// regular style

TextStyle getRegularStyle(
    {double fontSize = FontSize.s12, Color? color, double? height}) {
  return _getTextStyle(fontSize, FontWeightManager.regular,
      color ?? ColorManager.primary, height);
}

// medium style

TextStyle getMediumStyle(
    {double fontSize = FontSize.s12, Color? color, double? height}) {
  return _getTextStyle(fontSize, FontWeightManager.medium,
      color ?? ColorManager.primary, height);
}

// light style

TextStyle getLightStyle(
    {double fontSize = FontSize.s12, Color? color, double? height}) {
  return _getTextStyle(
      fontSize, FontWeightManager.light, color ?? ColorManager.primary, height);
}

// bold style

TextStyle getBoldStyle(
    {double fontSize = FontSize.s12, Color? color, double? height}) {
  return _getTextStyle(
      fontSize, FontWeightManager.bold, color ?? ColorManager.primary, height);
}

// semibold style

TextStyle getSemiBoldStyle(
    {double fontSize = FontSize.s12, Color? color, double? height}) {
  return _getTextStyle(fontSize, FontWeightManager.semiBold,
      color ?? ColorManager.primary, height);
}
