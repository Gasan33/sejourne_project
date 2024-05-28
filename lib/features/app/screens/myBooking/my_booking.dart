import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sejourne_project/common/styles/spacing_styles.dart';
import 'package:sejourne_project/common/widgets/custom_shapes/containers/background_image_container.dart';
import 'package:sejourne_project/features/app/screens/myBooking/widgets/my_bookings_appbar.dart';
import 'package:sejourne_project/features/app/screens/product_details/widgets/horizontal_icon_text.dart';

import '../../../../common/styles/shadows.dart';
import '../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';
import '../product_details/product_details.dart';

class MyBookingsScreen extends StatelessWidget {
  const MyBookingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundImageContainer(
        child: SingleChildScrollView(
          child: Padding(
            padding: TSpacingStyle.paddingWithAppBarHeight2,
            child: Column(
              children: [
                const MyBookingsAppBar(),
                const SizedBox(
                  height: TSizes.spaceBtwItems,
                ),
                InkWell(
                  onTap: () => Get.to(() => const ProductDetailScreen()),
                  child: TRoundedContainer(
                    height: 160,
                    backgroundColor: TColors.white,
                    showBorder: true,
                    isGradient: false,
                    padding: EdgeInsets.zero,
                    shadow: TShadowStyle.containerShadow,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(TSizes.md - 2),
                                bottomLeft: Radius.circular(TSizes.md)),
                            child: Image(
                              image: const AssetImage(TImage.property1),
                              fit: BoxFit.cover,
                              height: double.infinity,
                              width:
                                  TDeviceUtils.getScreenWidth(context) * 0.50,
                            ),
                          ),
                        ),


                        Expanded(
                            flex: 6,
                            child: Padding(
                              padding: const EdgeInsets.all(TSizes.sm),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Catalin Pustai",
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelLarge!
                                            .apply(color: TColors.darkerGrey),
                                      ),
                                      Row(
                                        children: [
                                          TRoundedContainer(
                                            isGradient: false,
                                            backgroundColor:
                                                const Color(0xFFF1F1F1),
                                            borderColor: TColors.secondary,
                                            showBorder: true,
                                            padding: const EdgeInsets.symmetric(
                                                vertical: TSizes.xs,
                                                horizontal: TSizes.sm),
                                            child: Text(
                                              'Paid',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelMedium!
                                                  .apply(color: TColors.black),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: TSizes.xs,
                                          ),
                                          Text(
                                            '30m ago',
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelMedium!
                                                .apply(color: TColors.darkGrey),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(
                                        TImage.locationIcon,
                                        height: TSizes.md,
                                      ),
                                      const SizedBox(
                                        width: TSizes.xs,
                                      ),
                                      Text(
                                        '2BR (608) O2 Residence JLT',
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelMedium!
                                            .apply(color: TColors.black),
                                      ),
                                    ],
                                  ),

                                   SizedBox(
                                     width: double.infinity,
                                     child: Row(
                                       children: [
                                         SizedBox(
                                           width: 72,
                                           child: HorizontalIconText(
                                             titleTextStyle: Theme.of(context).textTheme.labelSmall,
                                             subTitleTextStyle: Theme.of(context).textTheme.labelSmall,
                                            icon: TImage.checkIn,
                                             iconSize: TSizes.md,
                                             title: "Check In",
                                            subTitle: "17.06.2024",
                                           ),
                                         ),
                                         Expanded(
                                           child: HorizontalIconText(
                                             titleTextStyle: Theme.of(context).textTheme.labelSmall,
                                             subTitleTextStyle: Theme.of(context).textTheme.labelSmall,
                                             icon: TImage.checkOut,
                                             iconSize: TSizes.md,
                                             title: "Check Out",
                                             subTitle: " 26.06.2024",
                                           ),
                                         ),
                                         // Expanded(
                                         //   child: HorizontalIconText(
                                         //     titleTextStyle: Theme.of(context).textTheme.displaySmall,
                                         //     subTitleTextStyle: Theme.of(context).textTheme.displaySmall,
                                         //     icon: TImage.revenue,
                                         //     iconSize: TSizes.sm,
                                         //
                                         //     title: "Revenue",
                                         //     subTitle: "48,400",
                                         //   ),
                                         // ),
                                       ],
                                     ),
                                   ),
                                   SizedBox(
                                     width: double.infinity,
                                     child: Row(
                                       children: [
                                         Expanded(
                                           child: HorizontalIconText(
                                             titleTextStyle: Theme.of(context).textTheme.labelSmall,
                                             subTitleTextStyle: Theme.of(context).textTheme.labelSmall,
                                             icon: TImage.channel,
                                             iconSize: TSizes.md,

                                             title: "Channel",
                                             subTitle: "Direct",
                                           ),
                                         ),
                                         Expanded(
                                           child: HorizontalIconText(
                                             titleTextStyle: Theme.of(context).textTheme.labelSmall,
                                             subTitleTextStyle: Theme.of(context).textTheme.labelSmall,
                                             icon: TImage.nights,
                                             iconSize: TSizes.sm,

                                             title: "Nights",
                                             subTitle: "9",
                                           ),
                                         ),
                                         Expanded(
                                           child: HorizontalIconText(
                                             titleTextStyle: Theme.of(context).textTheme.labelSmall,
                                             subTitleTextStyle: Theme.of(context).textTheme.labelSmall,
                                             icon: TImage.priceIcon,
                                             iconSize: TSizes.sm,

                                             title: "Price",
                                             subTitle: "950 / Night",
                                           ),
                                         ),
                                       ],
                                     ),
                                   ),
                                   SizedBox(
                                     width: double.infinity,
                                     child: Row(
                                       children: [
                                         Expanded(
                                           child: HorizontalIconText(

                                             titleTextStyle: Theme.of(context).textTheme.labelSmall,
                                             subTitleTextStyle: Theme.of(context).textTheme.labelSmall,
                                             icon: TImage.fee,
                                             iconSize: TSizes.sm,
                                             title: "Cleaning Fee",
                                             subTitle: "550",
                                           ),
                                         ),
                                         Expanded(
                                           child: HorizontalIconText(
                                             titleTextStyle: Theme.of(context).textTheme.labelSmall,
                                             subTitleTextStyle: Theme.of(context).textTheme.labelSmall,
                                             icon: TImage.priceIcon,
                                             iconSize: TSizes.md,

                                             title: "Paid Amount",
                                             subTitle: "48,400",
                                           ),
                                         ),

                                       ],
                                     ),
                                   ),
                                ],
                              ),
                            ),
                        ),

                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
