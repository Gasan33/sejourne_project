import 'package:flutter/material.dart';
import 'package:sejourne_project/utils/constants/colors.dart';
import 'package:sejourne_project/utils/constants/sizes.dart';

class HorizontalIconText extends StatelessWidget {
  const HorizontalIconText(
      {super.key,
      required this.icon,
      required this.title,
       this.subTitle,  this.isSub=true});

  final String icon, title;
  final String? subTitle;
  final bool isSub;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: TSizes.xs),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
           icon,
            height: TSizes.md,
            width: TSizes.md,
          ),
          const SizedBox(width: TSizes.xs,),
          Expanded(
            child:isSub? RichText(
              maxLines: 2,
              text: TextSpan(
                text: "$title : ",
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: TColors.darkerGrey),
                children: <TextSpan>[
                 TextSpan(
                    text: subTitle,
                    style: Theme.of(context)
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
