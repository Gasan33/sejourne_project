import 'package:flutter/material.dart';

import '../../../../../common/widgets/icons/circular_icon.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class MyBookingsAppBar extends StatelessWidget {
  const MyBookingsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset( TImage.bookingsIcon,),

              const SizedBox(
                width: TSizes.md,
              ),

              Text(TTexts.myBookingsLabel,style: Theme.of(context).textTheme.headlineSmall,),
            ],
          ),

          /// Location and notification Icons
          const Row(
            children: [
              /// Location icon
              TCircularIcon(
                icon: TImage.mapIcon,
              ),
              SizedBox(
                width: TSizes.md,
              ),

              /// notification Icon
              TCircularIcon(icon: TImage.notificationIcon),
            ],
          ),
        ]);
  }
}
