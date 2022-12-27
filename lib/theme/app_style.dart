import 'package:flutter/material.dart';
import 'package:service_providers/core/app_export.dart';

class AppStyle {
  static TextStyle txtUrbanistRegular16 = TextStyle(
    color: ColorConstant.gray900,
    fontSize: getFontSize(
      16,
    ),
    fontFamily: 'Urbanist',
    fontWeight: FontWeight.w400,
  );

  static TextStyle txtUrbanistRegular18 = TextStyle(
    color: ColorConstant.gray900,
    fontSize: getFontSize(
      18,
    ),
    fontFamily: 'Urbanist',
    fontWeight: FontWeight.w400,
  );

  static TextStyle txtUrbanistRomanBold24BlueA700 = TextStyle(
    color: ColorConstant.blueA700,
    fontSize: getFontSize(
      24,
    ),
    fontFamily: 'Urbanist',
    fontWeight: FontWeight.w700,
  );

  static TextStyle txtUrbanistRomanBold24 = TextStyle(
    color: ColorConstant.gray900,
    fontSize: getFontSize(
      24,
    ),
    fontFamily: 'Urbanist',
    fontWeight: FontWeight.w700,
  );
}
