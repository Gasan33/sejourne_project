import 'package:flutter/material.dart';
import 'package:sejourne_project/utils/constants/colors.dart';
import 'package:sejourne_project/utils/constants/sizes.dart';

class HorizontalIconText extends StatelessWidget {
  const HorizontalIconText(
      {super.key,
      required this.icon,
      required this.title,
       this.subTitle,  this.isSub=true, this.titleTextStyle,this.subTitleTextStyle,  this.iconSize=TSizes.md,  this.maxLine=2, this.iconColor});

  final String icon, title;
  final String? subTitle;
  final bool isSub;
  final TextStyle? titleTextStyle,subTitleTextStyle;
  final double iconSize;
  final int maxLine;
  final Color? iconColor;



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: TSizes.xs),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
           icon,
            color: iconColor,
            height: iconSize,
            width: iconSize,
          ),
          const SizedBox(width: TSizes.xs,),
          Expanded(
            child:isSub? RichText(
              maxLines: maxLine ,
              text: TextSpan(
                text: "$title : ",
                style:titleTextStyle ?? Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: TColors.darkerGrey),
                children: <TextSpan>[
                 TextSpan(
                    text: subTitle,
                    style:subTitleTextStyle ?? Theme.of(context)
                        .textTheme
                        .labelMedium!
                        .apply(color: TColors.darkerGrey),
                  ),
                ],
              ),
            ):Text(title,style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: TColors.darkerGrey),),
          ),

        ],
      ),
    );
  }
}
