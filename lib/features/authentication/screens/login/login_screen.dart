import 'package:flutter/material.dart';
import 'package:sejourne_project/common/styles/spacing_styles.dart';
import 'package:sejourne_project/common/widgets/login_sing_up_widgets/login_signup_header.dart';
import 'package:sejourne_project/features/authentication/screens/login/widgets/login_form.dart';
import 'package:sejourne_project/utils/constants/image_strings.dart';
import 'package:sejourne_project/utils/constants/sizes.dart';
import 'package:sejourne_project/utils/constants/text_strings.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: TSpacingStyle.paddingWithAppBarHeight,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(TImage.signinSignupBackgroundImage),
            fit: BoxFit.contain,
          ),
        ),
        child: const SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: TSizes.spaceBtwSections,),
              /// header logo and titles
              LoginSignUpHeader(
                  title: TTexts.loginTitle, subTitle: TTexts.loginSubTitle),

              /// Login Form
              TLoginForm(),
            ],
          ),
        ),
      ),

    );
  }
}
