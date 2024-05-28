import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sejourne_project/common/styles/spacing_styles.dart';
import 'package:sejourne_project/common/widgets/custom_shapes/containers/background_image_container.dart';
import 'package:sejourne_project/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:sejourne_project/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:sejourne_project/features/app/screens/messages/widgets/frinds_status_bar.dart';
import 'package:sejourne_project/features/app/screens/messages/widgets/messages_appbar.dart';
import 'package:sejourne_project/features/app/screens/product_details/widgets/horizontal_icon_text.dart';
import 'package:sejourne_project/utils/constants/image_strings.dart';
import 'package:sejourne_project/utils/constants/sizes.dart';

import '../../../../common/styles/shadows.dart';
import '../../../../common/widgets/images/circular_image.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/device/device_utility.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List users = [
      TImage.user1,
      TImage.user2,
      TImage.user3,
      TImage.user4,
      TImage.user5,
    ];
    return Scaffold(
      body: BackgroundImageContainer(
        child: SingleChildScrollView(
          child: Padding(
            padding: TSpacingStyle.paddingWithAppBarHeight2,
            child: Column(
              children: [
                const MessagesAppBar(),
                SizedBox(
                  height: 120,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, index) => index == 0
                          ? DottedBorder(
                              borderType: BorderType.Circle,
                              color: TColors.darkGrey,
                              dashPattern: [4, 4],
                              strokeWidth: 2,
                              padding: const EdgeInsets.all(4),
                              borderPadding: const EdgeInsets.all(4),
                              child: const Center(
                                child: TCircularImage(
                                  image: TImage.plus,
                                  fit: BoxFit.cover,
                                  height: 72,
                                  width: 72,
                                  backgroundColor: TColors.grey2,
                                  iconSize: TSizes.md,
                                  padding: 0,
                                ),
                              ),
                            )
                          :  Center(
                              child: MessageProfilePic(
                                  image: users[index],

                                  ),
                            ),
                      separatorBuilder: (_, index) => const SizedBox(
                            width: TSizes.sm,
                          ),
                      itemCount: users.length),
                ),
                const Row(
                  children: [
                    Expanded(
                        flex: 10, child: TSearchContainer(text: "Search...")),
                    SizedBox(
                      width: TSizes.sm,
                    ),
                    Expanded(
                        flex: 1,
                        child: TRoundedContainer(
                            borderColor: TColors.grey2,
                            backgroundColor: TColors.white,
                            showBorder: true,
                            isGradient: false,
                            radius: TSizes.xs,
                            padding: EdgeInsets.all(TSizes.xs + 2),
                            //shadow: TShadowStyle.containerShadow,
                            child: Icon(Iconsax.filter)))
                  ],
                ),

                const SizedBox(
                  height: TSizes.sm,
                ),



                SizedBox(
                  height: 32,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, index) =>
                           TRoundedContainer(
                        isGradient:index==1?true: false,
                        backgroundColor:
                        const Color(0xFFF1F1F1),
                        borderColor: TColors.secondary,
                        showBorder: true,
                        padding: const EdgeInsets.symmetric(
                            vertical: TSizes.xs,
                            horizontal: TSizes.sm),
                        child: Text(
                         index==0? 'All':index==1?"Open":index==2?"Snoozed":index==3?"Closed":"Archived",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .apply(color: TColors.black),
                        ),
                      ),
                      separatorBuilder: (_, index) => const SizedBox(
                        width: TSizes.sm,
                      ),
                      itemCount: users.length),
                ),
                const SizedBox(
                  height: TSizes.sm,
                ),

                TRoundedContainer(
                  height: 88,
                  borderColor: TColors.grey2,
                  backgroundColor: TColors.white,
                  showBorder: true,
                  isGradient: false,
                  padding: EdgeInsets.zero,
                  shadow: TShadowStyle.containerShadow,
                  child: Row(
                    children: [
                      const Expanded(
                        flex: 2,
                        child: TCircularImage(
                            image: TImage.user1, height: 72, width: 72),
                      ),
                      Expanded(
                          flex: 6,
                          child: Padding(
                            padding: const EdgeInsets.all(TSizes.sm),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                            'Open',
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
                                          '1m ago',
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
                                    Flexible(
                                      flex: 12,
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            width: TDeviceUtils.getScreenWidth(
                                                    context) *
                                                0.60,
                                            child: Text(
                                              'Hello Allyah, good afternoon. Thank you for your response to my WhatsApp messages.',
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelSmall!
                                                  .apply(color: TColors.black),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    const Flexible(
                                      flex: 1,
                                      child: Icon(Icons.more_vert_outlined),
                                    ),
                                  ],
                                ),
                                HorizontalIconText(
                                  icon: TImage.locationIcon,
                                  title: "2BR (608) O2 Residence JLT",
                                  titleTextStyle:
                                      Theme.of(context).textTheme.labelSmall,
                                  iconSize: TSizes.sm,
                                )
                              ],
                            ),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
