// ignore: unnecessary_import
import 'dart:ui';
import 'package:talenthub/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillBlueGray => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blueGray100,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
      );
  static ButtonStyle get fillPrimary => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.h),
        ),
      );
  static ButtonStyle get fillPrimaryTL9 => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(9.h),
        ),
      );

  // Gradient button style
  static BoxDecoration get gradientDecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(10.h),
        gradient: LinearGradient(
          begin: Alignment(-0.04, 0),
          end: Alignment(0.97, 0),
          colors: [
            appTheme.gray50,
            appTheme.amberA200,
          ],
        ),
      );
  static BoxDecoration get gradientGreenAToYellowADecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(11.h),
        gradient: LinearGradient(
          begin: Alignment(-0.50, 0),
          end: Alignment(0.50, 0),
          colors: [
            appTheme.greenA700,
            appTheme.yellowA700,
          ],
        ),
      );
  static BoxDecoration get gradientWhiteToYellow => BoxDecoration(
        borderRadius: BorderRadius.circular(11.h),
        gradient: LinearGradient(
          begin: Alignment(0.89, 0),
          end: Alignment(-0.99, 1),
          colors: [
            appTheme.yellowA700,
            appTheme.whiteA700.withOpacity(0.8),
          ],
        ),
      );
  static BoxDecoration get gradientBlueToWhite => BoxDecoration(
        borderRadius: BorderRadius.circular(11.h),
        gradient: LinearGradient(
          begin: Alignment(0.89, 0),
          end: Alignment(-0.99, 1),
          colors: [
            appTheme.blue50,
            appTheme.whiteA700.withOpacity(0.8),
          ],
        ),
      );
  static BoxDecoration get gradientYellowAToBlackDecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(11.h),
        gradient: LinearGradient(
          begin: Alignment(0.85, 0),
          end: Alignment(-0.56, 1),
          colors: [
            appTheme.yellowA700.withOpacity(0.8),
            appTheme.black900.withOpacity(0.8),
          ],
        ),
      );
  static BoxDecoration get gradientYellowAToBlackTL5Decoration => BoxDecoration(
        borderRadius: BorderRadius.circular(5.h),
        gradient: LinearGradient(
          begin: Alignment(0.85, 0),
          end: Alignment(-0.56, 1),
          colors: [
            appTheme.yellowA700.withOpacity(0.8),
            appTheme.black900.withOpacity(0.8),
          ],
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
