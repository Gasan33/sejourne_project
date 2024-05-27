import 'package:flutter/material.dart';
import 'package:sejourne_project/utils/constants/colors.dart';
import 'package:sejourne_project/utils/constants/sizes.dart';

import '../../../utils/constants/image_strings.dart';

class LoginSignUpHeader extends StatelessWidget {
  const LoginSignUpHeader(
      {super.key, required this.title, required this.subTitle});

  final String title, subTitle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          /// Logo
          Image.asset(TImage.lightAppLogo),
          const SizedBox(
            height: TSizes.spaceBtwSections,
          ),

          /// title
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(
            height: TSizes.sm,
          ),

          /// SubTitle
          Center(
            child: Text(
              subTitle,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: TColors.darkGrey),
            ),
          ),
        ],
      ),
    );
  }
}
