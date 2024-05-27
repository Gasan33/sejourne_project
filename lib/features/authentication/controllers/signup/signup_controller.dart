import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sejourne_project/features/authentication/screens/login/login_screen.dart';
import '../../../../data/repositories/authentication_repository/authentication_repository.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../../../utils/helpers/network_manager.dart';
import '../../../../utils/popups/full_screen_loader.dart';
import '../../../../utils/popups/loaders.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  /// Variables
  final hidePassword = true.obs; // Observable for hiding / showing password
  final hideRePassword = true.obs; // Observable for hiding / showing password
  final privacyPolicy = false.obs; // Observable for Privacy Policy acceptance
  final name = TextEditingController(); // Controller for email input
  final email = TextEditingController(); // Controller for email input
  final password = TextEditingController(); // Controller for password input
  final rePassword = TextEditingController(); // Controller for password input
  GlobalKey<FormState> signupFormKey =
      GlobalKey<FormState>(); // Form key for form validation

  ///  -- SIGNUP
  Future<void> signup() async {
    signupFormKey.currentState!.validate();
    Get.focusScope!.unfocus();
    try {
      // Start Loading
      TFullScreenLoader.openLoadingDialog(
          'We are processing your information...', TImage.loader);

      // CheckInternet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        //   TFullScreenLoader.stopLoading();
        //
        // }else{
        return;
      }

      // Form Validation
      if (!signupFormKey.currentState!.validate()) {
        TFullScreenLoader.stopLoading();
        //
        // }else{
        return;
      }

      // Register user in the Firebase Authentication & save user data in the Firebase
     final response= await AuthenticationRepository.instance.registerWithEmailAndPassword(
          name.text.trim(),
          email.text.trim(),
          password.text.trim(),
          password.text.trim());

      TFullScreenLoader.stopLoading();


      if(response["status"]==200){
        // Show Success Message
        TLoaders.successSnackBar(
            title: 'Congratulations ${response["body"]['message']}',
            message: 'Your account has been created! Please Login to Your Account To Continue');

        // Screen Redirect
        Get.offAll(() => const LoginScreen());
      }else{
        THelperFunctions.showAlert("Error ${response['status']}", response["body"]['message']);
      }
    } catch (e) {
      TFullScreenLoader.stopLoading();
      // Show some Generic Error to the user
      TLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }
}
