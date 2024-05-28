import 'package:flutter/material.dart';
import 'package:sejourne_project/common/styles/spacing_styles.dart';
import 'package:sejourne_project/common/widgets/custom_shapes/containers/background_image_container.dart';
import 'package:sejourne_project/features/app/screens/wishlist/widgets/wishlist_appbar.dart';
import 'package:sejourne_project/utils/constants/sizes.dart';
import 'package:get/get.dart';
import '../../../../common/styles/shadows.dart';
import '../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../common/widgets/icons/circular_icon.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/device/device_utility.dart';
import '../home/widgets/icon_text_widget.dart';
import '../product_details/product_details.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> properties = [
      TImage.property,
      TImage.property1,
      TImage.property2,
      TImage.property3,
      TImage.property4,
      TImage.property5,
      TImage.property6,
    ];
    return Scaffold(
      body: BackgroundImageContainer(
        child: SingleChildScrollView(
          child: Padding(
            padding: TSpacingStyle.paddingWithAppBarHeight2,
            child: Column(
              children: [
                /// App Bar
                const WishListAppBar(),
                SizedBox(
                  width: double.infinity,
                  //height: 120,
                  child: ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: properties.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (_, index) {
                      return InkWell(
                        onTap: () => Get.to(() => const ProductDetailScreen()),
                        child: TRoundedContainer(
                          height: 140,
                          borderColor: TColors.grey2,
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
                                  child: Stack(
                                    children: [
                                      Image(
                                        image: AssetImage(properties[index]),
                                        fit: BoxFit.fill,
                                        height: double.infinity,
                                        width: TDeviceUtils.getScreenWidth(
                                                context) *
                                            0.50,
                                      ),
                                      Positioned(
                                          left: TSizes.sm,
                                          top: TSizes.sm,
                                          child: TRoundedContainer(
                                            padding:
                                                const EdgeInsets.all(TSizes.xs),
                                            child: Text(
                                              '1BR, Apartment',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .displaySmall!
                                                  .apply(color: TColors.white),
                                            ),
                                          )),
                                    ],
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
                                        Text(
                                          TTexts.offerLabel,
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelLarge!
                                              .apply(color: TColors.darkerGrey),
                                        ),
                                        Row(
                                          children: [
                                            const TCircularIcon(
                                              icon: TImage.priceIcon,
                                              backgroundColor:
                                                  TColors.lightBlue,
                                              height: TSizes.md,
                                              width: TSizes.md,
                                            ),
                                            const SizedBox(
                                              width: 2,
                                            ),
                                            RichText(
                                              text: TextSpan(
                                                text: 'د.إ13,000 ',
                                                style: const TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: TColors.darkGrey,
                                                    fontSize: 10),
                                                children: <TextSpan>[
                                                  TextSpan(
                                                    text: '/Night',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .labelSmall!
                                                        .apply(
                                                            color:
                                                                TColors.black),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(
                                              width: TSizes.defaultSpace,
                                            ),
                                            const Expanded(
                                              child: IconTextWidget(
                                                title: 'JLT, Dubai',
                                                icon: TImage.locationIcon,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Expanded(
                                              child: IconTextWidget(
                                                title: '1 Beds',
                                                icon: TImage.bedRoomsIcon,
                                              ),
                                            ),
                                            Expanded(
                                              child: IconTextWidget(
                                                title: '1 Baths',
                                                icon: TImage.bathIcon,
                                              ),
                                            ),
                                            Expanded(
                                              child: IconTextWidget(
                                                title: '289 Sqft',
                                                icon: TImage.mapIcon,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            InkWell(
                                                onTap: () {},
                                                child: Image.asset(
                                                  TImage.expandIcon,
                                                  width: TSizes.lg,
                                                  height: TSizes.lg,
                                                )),
                                            const SizedBox(
                                              width: TSizes.sm,
                                            ),
                                            InkWell(
                                                onTap: () {},
                                                child: Image.asset(
                                                   TImage.redHeartIcon,
                                                  width: TSizes.lg,
                                                  height: TSizes.lg,
                                                )),
                                            const SizedBox(
                                              width: TSizes.sm,
                                            ),
                                            InkWell(
                                                onTap: () {},
                                                child: Image.asset(
                                                  TImage.addIcon,
                                                  width: TSizes.lg,
                                                  height: TSizes.lg,
                                                )),
                                          ],
                                        )
                                      ],
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        const SizedBox(
                      height: TSizes.spaceBtwItems,
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
