import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sejourne_project/features/authentication/screens/login/login_screen.dart';
import 'package:sejourne_project/navigation_menu.dart';

import '../../../../data/repositories/authentication_repository/authentication_repository.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../../../utils/helpers/network_manager.dart';
import '../../../../utils/popups/full_screen_loader.dart';
import '../../../../utils/popups/loaders.dart';

class LoginController extends GetxController {
  /// Variables
  final rememberMe = true.obs;
  final hidePassword = true.obs;
  final localStorage = GetStorage();
  final email = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  //final userController = Get.put(UserController());

  @override
  void onInit() {
    //if(localStorage.read('REMEMBER_ME_EMAIL').toString().isNotEmpty&&localStorage.read('REMEMBER_ME_PASSWORD').toString().isEmpty){
    email.text = localStorage.read('REMEMBER_ME_EMAIL') ?? "";
    password.text = localStorage.read('REMEMBER_ME_PASSWORD') ?? "";

    super.onInit();
  }

  /// -- Email and Password SignIn
  Future<void> emailAndPasswordSignIn() async {
    try {
      // Start Loading
      TFullScreenLoader.openLoadingDialog('Logging you in...', TImage.loader);

      // Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        //   TFullScreenLoader.stopLoading();
        //
        // }else{
        return;
      }

      // Form Validation
      if (!loginFormKey.currentState!.validate()) {
        TFullScreenLoader.stopLoading();
        //
        // }else{
        return;
      }

      // Save Data
      if (rememberMe.value) {
        localStorage.write('REMEMBER_ME_EMAIL', email.text.trim());
        localStorage.write('REMEMBER_ME_PASSWORD', password.text.trim());
      }

      // Login user using EMail & Password Authentication
      final response = await AuthenticationRepository.instance
          .loginWithEmailAndPassword(
              email.text.trim(), password.text.toString());

      // Remove Loader
      TFullScreenLoader.stopLoading();

      if (response['body']["status"]) {
        // Save User Token
        localStorage.write('TOKEN', response["body"]['token']);
        // Redirect
        Get.offAll(() => const NavigationMenu());
        TLoaders.successSnackBar(
            title: 'Welcome !', message: response["body"]['message'].toString());
      } else {
        // Show some Generic Error to the user
        THelperFunctions.showAlert(
            "Error ${response['status']}", response["body"]['message']);
      }
    } catch (e) {
     // TFullScreenLoader.stopLoading();
      // Show some Generic Error to the user
      TLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }


  /// -- User Logout
  Future<void> logout() async {
    try {
      // Start Loading
      TFullScreenLoader.openLoadingDialog('Logging you out...', TImage.loader);

      // Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        //   TFullScreenLoader.stopLoading();
        //
        // }else{
        return;
      }


      // Save Data
      if (rememberMe.value) {
        localStorage.remove('REMEMBER_ME_EMAIL');
        localStorage.remove('REMEMBER_ME_PASSWORD');
      }

      // Login user using EMail & Password Authentication
      final response = await AuthenticationRepository.instance
          .logout();

      // Remove Loader
      TFullScreenLoader.stopLoading();

      if (response['status'] == 200) {
        // Save User Token
        //localStorage.write('TOKEN', response["body"]['token']);
        // Redirect
        Get.offAll(() => const LoginScreen());
        TLoaders.successSnackBar(
            title: 'Success !', message: response["body"]['message'].toString());
      } else {
        // Show some Generic Error to the user
        THelperFunctions.showAlert(
            "Error ${response['status']}", response["body"]['message']);
      }
    } catch (e) {
      TFullScreenLoader.stopLoading();
      // Show some Generic Error to the user
      TLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }
}
