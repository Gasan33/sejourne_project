import 'package:flutter/foundation.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../features/authentication/screens/login/login_screen.dart';
import '../../../utils/constants/api_constants.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../../../utils/http/http_client.dart';
import '../../../utils/local_storage/storage_utility.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  /// Variables
  final deviceStorage = GetStorage();

  /// Called from main.dart on app
  @override
  void onReady() {
    // Remove the native splash screen
    FlutterNativeSplash.remove();
    // Redirect to the appropriate screen
    Get.offAll(() => const LoginScreen());
  }

  /// Function to show Relevant screen
  // screenRedirect() async {
  //
  //
  //     // local storage
  //     if (kDebugMode) {
  //       print(
  //           '========================== GET STORAGE AUTH REPO ========================== ');
  //       print(deviceStorage.read("isFirstTime"));
  //     }
  //     deviceStorage.writeIfNull("isFirstTime", true);
  //
  //     // check if it's the first time launching the app
  //     deviceStorage.read("isFirstTime") != true
  //         ? Get.offAll(() =>
  //             const LoginScreen()) // Redirect to login screen if not the first time
  //         : Get.offAll(() =>
  //             const OnBoardingScreen()); // Redirect to onBoarding screen if it's the first time
  //
  // }

  /* ------------------------------  Email & Password sing-in -------------------------------- */

  /// [EmailAuthentication] - LOGIN
  Future<Map<String, dynamic>> loginWithEmailAndPassword(
    String email,
    String password,
  ) async {
    var headers = {'Content-Type': 'application/json'};
    try {
      Map body = {'email': email, 'password': password};
      final response =
          await THttpHelper.post(ApiConstants.loginEndPoint, body, headers);
      if (kDebugMode) {
        print("response is : \n$response");
      }
      return response;
    } catch (error) {
      Get.back();
      THelperFunctions.showAlert("Error", error.toString());
      throw Exception('Failed to load data.');
    }
  }

//
  /// [EmailAuthentication] - REGISTER
  Future<Map<String, dynamic>> registerWithEmailAndPassword(String name,
      String email, String password, String confirmPassword) async {
    var headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json'
    };
    try {
      Map body = {
        'name': name,
        'email': email,
        'password': password,
        "password_confirmation": confirmPassword
      };
      final response =
          await THttpHelper.post(ApiConstants.registerEndPoint, body, headers);
      if (kDebugMode) {
        print("response is : \n$response");
      }
      return response;
    } catch (error) {
      //TFullScreenLoader.stopLoading();
      throw Exception('Failed to load data.');
    }
  }

/* ------------------------------  ./end Federated identity & social sing-in -------------------------------- */

  /// [LogoutUser] - Valid for any authentication
  Future<Map<String, dynamic>> logout() async {
    try {
      final headers = {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${TLocalStorage().readData("TOKEN")}',
      };
      final response =
      await THttpHelper.get(ApiConstants.logoutEndPoint, headers);
      if (kDebugMode) {
        print("response is : \n$response");
      }
      return response;
    } catch (error) {
      Get.back();
      THelperFunctions.showAlert("Error", error.toString());
      throw Exception('Failed to load data.');
    }
  }

}
