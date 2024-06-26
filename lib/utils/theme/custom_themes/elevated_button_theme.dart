import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class TElevatedButtonTheme{
  TElevatedButtonTheme._();

/// Customizable Light ElevatedButton Theme
 static final lightElevatedButtonTheme = ElevatedButtonThemeData(
   style: ElevatedButton.styleFrom(
     elevation: 0,
     foregroundColor: Colors.white,
     backgroundColor: TColors.primary,
     disabledForegroundColor: Colors.grey,
     disabledBackgroundColor: Colors.grey,
     side:  const BorderSide(color: TColors.primary),
     padding: const EdgeInsets.symmetric(vertical: 18.0),
     textStyle: const TextStyle(fontSize: 16.0,color: Colors.white,fontWeight: FontWeight.w600),
     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
   ),
 );

  /// Customizable Dark ElevatedButton Theme
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      backgroundColor: TColors.primary,
      disabledForegroundColor: Colors.grey,
      disabledBackgroundColor: Colors.grey,
      side:  const BorderSide(color: TColors.primary),
      padding: const EdgeInsets.symmetric(vertical: 18.0),
      textStyle: const TextStyle(fontSize: 16.0,color: Colors.white,fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
    ),
  );
}