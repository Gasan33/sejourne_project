import 'package:flutter/material.dart';
import 'package:sejourne_project/features/authentication/screens/signup/widgets/signup_form.dart';
import '../../../../common/styles/spacing_styles.dart';
import '../../../../common/widgets/login_sing_up_widgets/login_signup_header.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                  title: TTexts.singUpTitle, subTitle: TTexts.singUpSubTitle),

              /// Login Form
              SignUpForm(),
            ],
          ),
        ),
      ),
    );
  }
}
