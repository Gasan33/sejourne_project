import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sejourne_project/common/styles/spacing_styles.dart';
import 'package:sejourne_project/common/widgets/custom_shapes/containers/background_image_container.dart';
import 'package:sejourne_project/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:sejourne_project/common/widgets/layouts/grid_layout.dart';
import 'package:sejourne_project/features/app/screens/product_details/widgets/horizontal_icon_text.dart';
import 'package:sejourne_project/features/personalization/screens/profile/widgets/icon_title.dart';
import 'package:sejourne_project/features/personalization/screens/profile/widgets/profile_appbar.dart';
import 'package:sejourne_project/features/personalization/screens/profile/widgets/profile_pic.dart';
import 'package:sejourne_project/features/personalization/screens/profile/widgets/rating_widget.dart';
import 'package:sejourne_project/utils/constants/colors.dart';
import 'package:sejourne_project/utils/device/device_utility.dart';
import 'package:sejourne_project/utils/helpers/helper_functions.dart';
import '../../../../common/styles/shadows.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../app/controllers/user/user_controller.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UserController());

    List titles = [
      "Personal",
      "Preferences",
      "Security",
      "Payment",
      "Privacy",
      "Settings"
    ];
    List icons = [
      TImage.personal,
      TImage.preferences,
      TImage.security,
      TImage.payment,
      TImage.privacy,
      TImage.settings,
    ];
    return Scaffold(
      backgroundColor: Colors.transparent,
      /// Body
      body: BackgroundImageContainer(
        child: SingleChildScrollView(
          child: Obx(
            () => controller.profileLoading.value
                ?  SizedBox(
                  height: TDeviceUtils.getScreenHeight(),
                  child: const Center(child: CircularProgressIndicator( )),
                )
                : Padding(
                    padding: TSpacingStyle.paddingWithAppBarHeight2,
                    child: Column(
                      children: [
                        const ProfileAppBar(),
        
                        /// Profile Picture
                        const SizedBox(
                          height: TSizes.imageThumbSize,
                        ),
        
                        SizedBox(
                          height: 260,
                          child: Stack(children: [
                             Align(
                              alignment: Alignment.bottomCenter,
                              child: TRoundedContainer(
                                height: 180,
                                width: double.infinity,
        
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  //crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text("Catalin Pustai",style: Theme.of(context).textTheme.bodyLarge!.apply(color: TColors.white),),
                                    SizedBox(
                                      width: TDeviceUtils.getScreenWidth(context)*0.3,
                                        child: HorizontalIconText(icon: TImage.locationIcon,iconColor: TColors.white, title: "Internet City, Dubai.",titleTextStyle: Theme.of(context).textTheme.labelSmall!.apply(color: TColors.white,),)),
                                    const TRatingWidget(),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                                //top: 20,
                                left: TDeviceUtils.getScreenWidth(context) / 3,
                                child: DottedBorder(
                                    borderType: BorderType.Circle,
                                    color: TColors.primary,
                                    dashPattern: [4, 4],
                                    strokeWidth: 4,
                                    padding: const EdgeInsets.all(8),
                                    borderPadding: const EdgeInsets.all(4),
                                    child: const ProfilePic(
                                    ))),
                          ]),
                        ),
                        const SizedBox(
                          height: TSizes.spaceBtwSections,
                        ),
        
                        TGridLayout(
                            itemCount: 6,
                            mainAxisExtent: 120,
                            itemBuilder: (_, index) => TRoundedContainer(
                                  backgroundColor: TColors.white,
                                  showBorder: true,
                                  isGradient: false,
                                  padding: EdgeInsets.zero,
                                  shadow: TShadowStyle.containerShadow,
                                  child: IconTitle(
                                    title: titles[index],
                                    icon: icons[index],
                                  ),
                                )),
                        const SizedBox(
                          height: TSizes.spaceBtwSections,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () =>
                                  THelperFunctions.showLogoutAlert(),
                              child: const Text("Logout")),
                        ),
        
                        const SizedBox(
                          height: TSizes.appBarHeight*2,
                        ),
                      ],
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
