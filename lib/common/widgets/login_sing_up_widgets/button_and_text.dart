import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sejourne_project/features/authentication/screens/signup/signup_screen.dart';
import '../../../features/authentication/screens/login/login_screen.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/text_strings.dart';

class ButtonAndTextWidget extends StatelessWidget {
  const ButtonAndTextWidget({super.key, this.isSignUp = false});

  final bool isSignUp;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
         isSignUp? TTexts.alreadyHaveAccount :TTexts.notHaveAccount,
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .apply(color: TColors.darkerGrey.withOpacity(0.5)),
        ),
        TextButton(
          onPressed: () => isSignUp
              ? Get.offAll(() => const LoginScreen())
              : Get.offAll(() => const SignUpScreen()),
          style: TextButton.styleFrom(padding: EdgeInsets.zero),
          child: Text(
            isSignUp?TTexts.login: TTexts.signup,
            style: Theme.of(context).textTheme.bodyLarge!.apply(
                  color: TColors.primary,
                  decoration: TextDecoration.underline,
                ),
          ),
        )
      ],
    );
  }
}
