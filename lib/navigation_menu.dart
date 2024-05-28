import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sejourne_project/features/app/screens/messages/messages.dart';
import 'package:sejourne_project/features/app/screens/myBooking/my_booking.dart';
import 'package:sejourne_project/features/app/screens/wishlist/wishlist.dart';
import 'package:sejourne_project/utils/constants/colors.dart';
import 'package:sejourne_project/utils/constants/image_strings.dart';
import 'package:sejourne_project/utils/constants/sizes.dart';
import 'package:sejourne_project/utils/constants/text_strings.dart';

import 'common/styles/shadows.dart';
import 'features/app/screens/home/home_screen.dart';
import 'features/personalization/screens/profile/profile.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: Obx(
        () => Container(
          height: 72,
          decoration: BoxDecoration(
              color: TColors.white,
              boxShadow: [TShadowStyle.verticalProductShadow],
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(TSizes.cardRadiusLg),
                topRight: Radius.circular(TSizes.cardRadiusLg),
              )),
          child: NavigationBar(
            selectedIndex: controller.selectedIndex.value,
            backgroundColor: Colors.transparent,
elevation: 0,
            indicatorColor: Colors.transparent,
            onDestinationSelected: (index) =>
                controller.selectedIndex.value = index,
            destinations:  [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: TSizes.sm),
                decoration:  BoxDecoration(
                  border:controller.selectedIndex.value==0? const Border(bottom:BorderSide(width: 3,color: TColors.primary)):const Border(bottom:BorderSide(width: 3,color: TColors.white))
                ),
                child: NavigationDestination(
                  icon: SvgPicture.asset(TImage.homeIcon1),
                  label: TTexts.homeLabel,

                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: TSizes.sm),
                decoration:  BoxDecoration(
                    border:controller.selectedIndex.value==1? const Border(bottom:BorderSide(width: 3,color: TColors.primary)):const Border(bottom:BorderSide(width: 3,color: TColors.white))
                ),
                child: NavigationDestination(
                  icon: Image.asset(TImage.wishListIcon),
                  label: TTexts.wishListLabel,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: TSizes.sm),
                decoration:  BoxDecoration(
                    border:controller.selectedIndex.value==2? const Border(bottom:BorderSide(width: 3,color: TColors.primary)):const Border(bottom:BorderSide(width: 3,color: TColors.white))
                ),
                child: NavigationDestination(
                  icon: Image.asset(TImage.bookingsIcon),
                  label: TTexts.myBookingsLabel,

                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: TSizes.sm),
                decoration:  BoxDecoration(
                    border:controller.selectedIndex.value==3? const Border(bottom:BorderSide(width: 3,color: TColors.primary)):const Border(bottom:BorderSide(width: 3,color: TColors.white))
                ),
                child: NavigationDestination(
                  icon: Image.asset(TImage.messagesIcon),
                  label: TTexts.messagesLabel,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: TSizes.sm),
                decoration:  BoxDecoration(
                    border:controller.selectedIndex.value==4? const Border(bottom:BorderSide(width: 3,color: TColors.primary)):const Border(bottom:BorderSide(width: 3,color: TColors.white))
                ),
                child: NavigationDestination(
                  icon: Image.asset(TImage.profileIcon),
                  label: TTexts.profileLabel,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    const HomeScreen(),
   const WishListScreen(),
     const MyBookingsScreen(),
    const MessagesScreen(),
    const ProfileScreen(),
  ];
}
