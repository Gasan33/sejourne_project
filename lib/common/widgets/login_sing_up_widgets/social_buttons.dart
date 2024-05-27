import 'package:flutter/material.dart';

import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../utils/constants/text_strings.dart';

class TSocialButtons extends StatelessWidget {
  const TSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //final controller = Get.put(LoginController());
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: double.infinity,
          child: OutlinedButton(
            onPressed: (){} ,//=> Get.to(() => const SingUpScreen()),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(TImage.google),
                const SizedBox(
                  width: TSizes.sm,
                ),
                Expanded(child: Text(TTexts.continueWithGoogle,style: Theme.of(context).textTheme.titleSmall,overflow: TextOverflow.ellipsis,)),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: TSizes.spaceBtwSections,
        ),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton(
            onPressed: (){} ,//=> Get.to(() => const SingUpScreen()),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(TImage.facebook),
                const SizedBox(
                  width: TSizes.sm,
                ),
                Expanded(child: Text(TTexts.continueWithFacebook,style: Theme.of(context).textTheme.titleSmall,overflow: TextOverflow.ellipsis,)),
              ],
            ),
          ),
        ),

      ],
    );
  }
}

