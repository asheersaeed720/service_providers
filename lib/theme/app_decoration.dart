import 'package:flutter/material.dart';
import 'package:service_providers/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get gradientBlueA700BlueA200 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            1,
            1,
          ),
          end: Alignment(
            0,
            0,
          ),
          colors: [
            ColorConstant.blueA700,
            ColorConstant.blueA200,
          ],
        ),
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder48 = BorderRadius.circular(
    getHorizontalSize(
      48.00,
    ),
  );

  static BorderRadius roundedBorder70 = BorderRadius.circular(
    getHorizontalSize(
      70.00,
    ),
  );
}
