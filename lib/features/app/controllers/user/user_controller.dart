import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import '../../../../data/repositories/user/user_repository.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../../../utils/popups/loaders.dart';
import '../../../authentication/models/user/user_model.dart';

class UserController extends GetxController {
  static UserController get instance => Get.find();

  final profileLoading = false.obs;
  UserModel user = UserModel.empty();

  final userRepository = Get.put(UserRepository());


  File? imageFile;
  String? imageUrl;

  @override
  void onInit() {
    super.onInit();
    fetchUserRecord();
  }

  /// Fetch User Record
  Future<void> fetchUserRecord() async {
    try {
      profileLoading.value = true;
      final response = await userRepository.fetchUserDetails();
      if (response["status"] == 200) {
        ///data successfully
        //var result = jsonDecode(response["data"]);
        user = UserModel.fromJson(response["body"]["data"]);
        if (kDebugMode) {
          print("response is :${response["body"]['data']}");
          print(user.name);
        }

      } else {
        THelperFunctions.showAlert("Error ${response['status']}", response["body"]['message']);

      }
    } catch (e) {
      TLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    } finally {
      profileLoading.value = false;
    }
  }

}
