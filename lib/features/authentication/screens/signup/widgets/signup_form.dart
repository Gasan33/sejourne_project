import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../common/widgets/login_sing_up_widgets/button_and_text.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/vaildators/vaildation.dart';
import '../../../controllers/signup/signup_controller.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    return Form(
      key: controller.signupFormKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
        child: Column(
          children: [
            ///  Name
            TextFormField(
              controller: controller.name,
              expands: false,
              decoration: const InputDecoration(
                labelText: TTexts.name,
              ),
              validator: (value) =>
                  TValidator.validateEmptyText('Name', value!),
            ),
            const SizedBox(
              height: TSizes.spaceBtwInputField,
            ),

            /// Email
            TextFormField(
              controller: controller.email,
              decoration: const InputDecoration(
                labelText: TTexts.email,
              ),
              validator: (value) => TValidator.validateEmail(value!),
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
                validator: (value) => TValidator.validatePassword(value!),
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwInputField,
            ),

            /// Re Type Password
            Obx(
              () => TextFormField(
                controller: controller.rePassword,
                obscureText: controller.hideRePassword.value,
                decoration: InputDecoration(
                  labelText: TTexts.rePassword,
                  suffixIcon: IconButton(
                    onPressed: () => controller.hideRePassword.value =
                        !controller.hideRePassword.value,
                    icon: Icon(controller.hideRePassword.value
                        ? Iconsax.eye_slash
                        : Iconsax.eye),
                  ),
                ),
                validator: (value) => TValidator.passwordMatch(value,controller.password.text),
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),

            /// SIng Up Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => controller.signup(),
                child: const Text(TTexts.register),
              ),
            ),

            const ButtonAndTextWidget(
              isSignUp: true,
            ),
          ],
        ),
      ),
    );
  }
}
