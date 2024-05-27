import 'package:flutter/material.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';

class TCircularIcon extends StatelessWidget {
  const TCircularIcon({
    super.key,
    this.width,
    this.height,
    this.size=TSizes.lg,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,  this.showBorder=true,  this.padding=0,
  });

  final double? width, height, size;
  final String icon;
  final double padding;
  final bool showBorder;
  final Color? color, backgroundColor;
  final VoidCallback? onPressed;

 

  @override
  Widget build(BuildContext context) {
    final  dark=THelperFunctions.isDarkMode(context);
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding:  EdgeInsets.all(padding),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          border:showBorder? Border.all(color: TColors.secondary,width: 1.0):null,
          color: backgroundColor!=null?backgroundColor!
          :dark
              ? TColors.black.withOpacity(0.9)
              : TColors.white,
        ),
        child:
          Image.asset(icon,),
      ),
    );
  }
}
