import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sejourne_project/utils/constants/colors.dart';
import 'package:sejourne_project/utils/theme/theme.dart';

import 'bindings/general_bindings.dart';

/// -- Use This Class To Setup Themes , initialize Binding , any Animations and much more ---------
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.lightTheme,
      initialBinding:GeneralBindings() ,
      home: const Scaffold(backgroundColor: TColors.primary,body: Center(child: CircularProgressIndicator(color: TColors.white,),),),
    );
  }
}