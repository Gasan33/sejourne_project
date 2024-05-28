import 'package:flutter/material.dart';
import 'package:sejourne_project/utils/constants/colors.dart';

class TTextTheme{
  TTextTheme._();

  /// Customizable Light Text Theme
  static TextTheme lightTextTheme =TextTheme(
    headlineLarge:const TextStyle().copyWith(fontSize: 32.0,fontWeight: FontWeight.bold,color: TColors.fontColor),
    headlineMedium:const TextStyle().copyWith(fontSize: 24.0,fontWeight: FontWeight.w600,color: TColors.fontColor),
    headlineSmall:const TextStyle().copyWith(fontSize: 18.0,fontWeight: FontWeight.w600,color: TColors.fontColor),

    titleLarge:const TextStyle().copyWith(fontSize: 16.0,fontWeight: FontWeight.w600,color: TColors.fontColor),
    titleMedium:const TextStyle().copyWith(fontSize: 16.0,fontWeight: FontWeight.w500,color: TColors.fontColor),
    titleSmall:const TextStyle().copyWith(fontSize: 16.0,fontWeight: FontWeight.w400,color: TColors.fontColor),

    bodyLarge:const TextStyle().copyWith(fontSize: 14.0,fontWeight: FontWeight.w600,color: TColors.fontColor),
    bodyMedium:const TextStyle().copyWith(fontSize: 14.0,fontWeight: FontWeight.normal,color: TColors.fontColor),
    bodySmall:const TextStyle().copyWith(fontSize: 14.0,fontWeight: FontWeight.w500,color: TColors.fontColor),

    labelLarge:const TextStyle().copyWith(fontSize: 12.0,fontWeight: FontWeight.bold,color: TColors.fontColor),
    labelMedium:const TextStyle().copyWith(fontSize: 10.0,fontWeight: FontWeight.normal,color: TColors.fontColor),
    labelSmall:const TextStyle().copyWith(fontSize: 8.0,fontWeight: FontWeight.normal,color: TColors.fontColor),
    displaySmall:const TextStyle().copyWith(fontSize: 4.0,fontWeight: FontWeight.normal,color: TColors.fontColor),


  );

  /// Customizable Dark Text Theme
  static TextTheme darkTextTheme =TextTheme(
    headlineLarge:const TextStyle().copyWith(fontSize: 32.0,fontWeight: FontWeight.bold,color: Colors.white),
    headlineMedium:const TextStyle().copyWith(fontSize: 24.0,fontWeight: FontWeight.w600,color: Colors.white),
    headlineSmall:const TextStyle().copyWith(fontSize: 18.0,fontWeight: FontWeight.w600,color: Colors.white),

    titleLarge:const TextStyle().copyWith(fontSize: 16.0,fontWeight: FontWeight.w600,color: Colors.white),
    titleMedium:const TextStyle().copyWith(fontSize: 16.0,fontWeight: FontWeight.w500,color: Colors.white),
    titleSmall:const TextStyle().copyWith(fontSize: 16.0,fontWeight: FontWeight.w400,color: Colors.white),

    bodyLarge:const TextStyle().copyWith(fontSize: 14.0,fontWeight: FontWeight.w500,color: Colors.white),
    bodyMedium:const TextStyle().copyWith(fontSize: 14.0,fontWeight: FontWeight.normal,color: Colors.white),
    bodySmall:const TextStyle().copyWith(fontSize: 14.0,fontWeight: FontWeight.w500,color: Colors.white.withOpacity(0.5)),

    labelLarge:const TextStyle().copyWith(fontSize: 12.0,fontWeight: FontWeight.normal,color: Colors.white),
    labelMedium:const TextStyle().copyWith(fontSize: 12.0,fontWeight: FontWeight.normal,color: Colors.white.withOpacity(0.5)),
    labelSmall:const TextStyle().copyWith(fontSize: 8.0,fontWeight: FontWeight.normal,color: Colors.white.withOpacity(0.5)),

  );
}