import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sejourne_project/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:sejourne_project/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/images/circular_image.dart';
import '../../../../common/widgets/texts/section_header.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../app/controllers/user/user_controller.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UserController());
    return Scaffold(
      appBar: const TAppBar(
        showBackArrow: false,
        title: Text('Profile'),
      ),

      /// Body
      body: SingleChildScrollView(
        child: Obx(
          () => controller.profileLoading.value
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child: Column(
                    children: [
                      /// Profile Picture
                      SizedBox(
                        width: double.infinity,
                        child: Column(
                          children: [
                            const TCircularImage(
                              image: TImage.user,
                              width: 80,
                              height: 80,
                            ),
                            TextButton(
                                onPressed: () {},
                                child: const Text('Change Profile Picture')),
                          ],
                        ),
                      ),

                      /// -- Details
                      const SizedBox(
                        height: TSizes.spaceBtwItems / 2,
                      ),
                      const Divider(),
                      const SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),

                      /// -- Heading Profile Info

                      const TSectionHeading(
                        title: 'Profile Information',
                        showActionButton: false,
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),
                      TProfileMenu(
                        title: 'Name',

                        value: controller.user.name,
                        onPressed: () {}, // => Get.to(()=> const ChangeName()),
                      ),
                      TProfileMenu(
                        title: 'Username',
                        value: controller.user.name,
                        onPressed: () {},
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),

                      const Divider(),
                      const SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),

                      /// -- Heading Personal Info

                      const TSectionHeading(
                        title: 'Personal Information',
                        showActionButton: false,
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),

                      TProfileMenu(
                        title: 'User ID',
                        icon: Iconsax.copy,
                        value: controller.user.id.toString(),
                        onPressed: () {},
                      ),
                      TProfileMenu(
                        title: 'E-mail',
                        value: controller.user.email,
                        onPressed: () {},
                      ),
                      TProfileMenu(
                        title: 'Phone Number',
                        value: "+971*******",
                        onPressed: () {},
                      ),
                      TProfileMenu(
                        title: 'Gender',
                        value: 'Male',
                        onPressed: () {},
                      ),
                      TProfileMenu(
                        title: 'Date of Birth',
                        value: '1 Feb, 1998',
                        onPressed: () {},
                      ),
                      const Divider(),
                      const SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),


                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: ()=>THelperFunctions.showLogoutAlert(), child: const Text("Logout")),
                      ),

                      const SizedBox(
                        height: TSizes.appBarHeight,
                      ),
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
