import 'package:flutter/material.dart';
import 'package:sejourne_project/utils/constants/colors.dart';

import '../../../../../utils/constants/sizes.dart';

class TRatingWidget extends StatelessWidget {
  const TRatingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        /// Rating
        Row(
          children: [
            Text('4.9',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .apply(color: TColors.white)),

            const SizedBox(
              width: TSizes.spaceBtwItems / 2,
            ),
            const Icon(
              Icons.star_rounded,
              color: TColors.green,
              size: 24,
            ),
            const Icon(
              Icons.star_rounded,
              color: TColors.green,
              size: 24,
            ),
            const Icon(
              Icons.star_rounded,
              color: TColors.green,
              size: 24,
            ),
            const Icon(
              Icons.star_rounded,
              color: TColors.green,
              size: 24,
            ),
            const Icon(
              Icons.star_rounded,
              color: TColors.green,
              size: 24,
            ),

            Text('3 Reviews',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .apply(color: TColors.white)),
          ],
        ),
      ],
    );
  }
}
