import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class TRoundedContainer extends StatelessWidget {
  const TRoundedContainer({
    super.key,
    this.width,
    this.height,
    this.radius = TSizes.cardRadiusLg,
    this.padding,
    this.child,
    this.backgroundColor = TColors.white,
    this.margin,
    this.showBorder = false,
    this.borderColor = TColors.darkGrey,
    this.shadow = const BoxShadow(),
    this.gradient,
    this.isGradient = true,
  });

  final double? width;
  final double? height;
  final double radius;
  final Widget? child;
  final bool showBorder;
  final Color borderColor;
  final Color backgroundColor;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final BoxShadow shadow;
  final Gradient? gradient;
  final bool isGradient;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        boxShadow: [shadow],
        color: backgroundColor,
        gradient:isGradient? gradient ?? TColors.linerGradient:null,
        border: showBorder ? Border.all(color: borderColor, width: 0.8) : null,
      ),
      child: child,
    );
  }
}
