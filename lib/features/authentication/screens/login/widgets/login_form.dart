import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sejourne_project/common/widgets/login_sing_up_widgets/social_buttons.dart';
import 'package:sejourne_project/utils/constants/colors.dart';
import '../../../../../common/widgets/login_sing_up_widgets/button_and_text.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/vaildators/vaildation.dart';
import '../../../controllers/login/login_controller.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Form(
      key: controller.loginFormKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            /// Email
            TextFormField(
              controller: controller.email,
              decoration: const InputDecoration(
                labelText: TTexts.loginEmailHint,
              ),
              validator: (value) => TValidator.validateEmail(value),
            ),
            const SizedBox(
              height: TSizes.spaceBtwInputField,
            ),

            /// Password
            Obx(
              () => TextFormField(
                controller: controller.password,
                obscureText: controller.hidePassword.value,
                decoration: InputDecoration(
                  labelText: TTexts.password,
                  suffixIcon: IconButton(
                    onPressed: () => controller.hidePassword.value =
                        !controller.hidePassword.value,
                    icon: Icon(controller.hidePassword.value
                        ? Iconsax.eye_slash
                        : Iconsax.eye),
                  ),
                ),
                validator: (value) =>
                    TValidator.validateEmptyText('Password', value!),
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwInputField / 2,
            ),

            /// Remember Me & Forget Password
            TextButton(
              onPressed: () {},
              child: Text(
                TTexts.forgetPassword,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .apply(color: TColors.primary),
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),

            /// Sign In Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: ()=> controller.emailAndPasswordSignIn(),
                child:  Text(TTexts.login.toUpperCase()),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: TSizes.defaultSpace),
              child: Center(
                  child: Text(
                TTexts.signUpWith,
                style: Theme.of(context).textTheme.titleLarge,
              )),
            ),

            /// Social Buttons
            const TSocialButtons(),

            const ButtonAndTextWidget()
          ],
        ),
      ),
    );
  }
}
