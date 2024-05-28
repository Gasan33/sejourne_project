import 'package:flutter/material.dart';
import 'package:sejourne_project/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:sejourne_project/utils/constants/colors.dart';
import 'package:sejourne_project/utils/constants/image_strings.dart';

import '../../../../../utils/constants/sizes.dart';

class Summary extends StatelessWidget {
  const Summary({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const TRoundedContainer(
      isGradient: false,
      showBorder: true,
      borderColor: TColors.grey,
      child: Row(
        children: [
          /// Apartment Button
          Expanded(
            flex: 2,
            child: IconTitleSubTitle(
              icon: TImage.apartment,
              title: 'Apartment',
              subTitle: 'Studio',
            ),
          ),

          Expanded(
            flex: 2,
            child: IconTitleSubTitle(
              icon: TImage.accommodation,
              title: 'Accommodation',
              subTitle: '2 Guests',
            ),
          ),

          Expanded(
            flex: 2,
            child: IconTitleSubTitle(
              icon: TImage.bedRoomsIcon,
              title: 'Studio Bedrooms',
              subTitle: '1 Beds',
            ),
          ),

          Expanded(
            flex: 2,
            child: IconTitleSubTitle(
              showBorder: false,
              icon: TImage.shawer,
              title: 'Bathrooms',
              subTitle: '1 Full',
            ),
          ),
        ],
      ),
    );
  }
}

class IconTitleSubTitle extends StatelessWidget {
  const IconTitleSubTitle({
    super.key,
    required this.icon,
    required this.title,
    required this.subTitle,
    this.showBorder = true,
  });

  final String icon, title, subTitle;
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            icon,
            height: TSizes.iconMd,
            width: TSizes.iconMd,
          ),
          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 6,color: TColors.darkerGrey),
          ),
          Text(
            subTitle ?? "",
            style: Theme.of(context).textTheme.displaySmall,
          ),
        ],
      ),
    );
  }
}
