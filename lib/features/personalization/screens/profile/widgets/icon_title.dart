import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class IconTitle extends StatelessWidget {
  const IconTitle({
    super.key,
    required this.icon,
    required this.title,
    this.showBorder = true,
  });

  final String icon, title;
  final bool showBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(TSizes.sm),
      decoration: BoxDecoration(
          border: showBorder
              ? const Border(right: BorderSide(color: TColors.grey, width: 1))
              : null),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            icon,
            height: TSizes.iconLg,
            width: TSizes.iconLg,
          ),
          const SizedBox(
            height: TSizes.xs,
          ),
          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 12,color: TColors.black),
          ),
        ],
      ),
    );
  }
}
