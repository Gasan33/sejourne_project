import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../../common/widgets/icons/circular_icon.dart';
import '../../../../../common/widgets/images/rounded_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Container(
      color: dark ? TColors.darkerGrey : TColors.light,
      child: Stack(
        children: [
          Container(
            height: 220,
            padding: const EdgeInsets.all(TSizes.xs),
            child: const TRoundedImage(
                borderRadius: TSizes.md, imageUrl: TImage.property),
          ),

          /// Image Slider
          Positioned(
            right: TSizes.spaceBtwSections,
            bottom: 20,
            left: TSizes.spaceBtwSections,
            child: SizedBox(
              height: 40,
              child: Row(
                children: [
                  const Expanded(
                    flex: 1,
                    child: TCircularContainer(
                      width: TSizes.iconXs,
                      height: double.infinity,
                      margin: EdgeInsets.only(right: 10),
                      backgroundColor: TColors.grey,
                      child: Center(
                          child: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        size: TSizes.sm,
                      )),
                    ),
                  ),
                  Expanded(
                    flex: 12,
                    child: ListView.builder(
                      itemCount: 6,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      // separatorBuilder: (_, __) => const SizedBox(
                      //   width: TSizes.spaceBtwItems,
                      // ),
                      itemBuilder: (_, index) => TRoundedImage(
                        borderRadius: TSizes.sm,
                        padding: EdgeInsets.zero,
                        margin: const EdgeInsets.symmetric(horizontal: TSizes.xs),
                        imageUrl: banners[index],
                        width: 56,
                        border:
                        Border.all(color: TColors.white, width: 1),
                      )
                    ),
                  ),
                  const SizedBox(
                    width: TSizes.spaceBtwItems,
                  ),

                  const Expanded(
                    flex: 1,
                    child: TCircularContainer(
                      width: TSizes.iconXs,
                      height: double.infinity,
                      margin: EdgeInsets.only(right: 10),
                      backgroundColor: TColors.grey,
                      child: Center(
                          child: Icon(
                        Icons.arrow_forward_ios,
                        size: TSizes.sm,
                      )),
                    ),
                  ),
                ],
              ),
            ),
          ),

          /// Appbar Icons
           Padding(
             padding: const EdgeInsets.symmetric(horizontal:TSizes.defaultSpace,vertical: TSizes.md),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TCircularIcon(
                  icon: TImage.backArrow,
                  onPressed: ()=>Get.back(),
                ),
                const Row(
                  children: [
                    TCircularIcon(
                      icon: TImage.share,
                    ),
                    SizedBox(
                      width: TSizes.sm,
                    ),
                    TCircularIcon(
                      icon: TImage.message,
                    ),
                    SizedBox(
                      width: TSizes.sm,
                    ),
                    TCircularIcon(
                      padding: TSizes.md-2,
                      icon: TImage.red,
                    ),
                  ],
                ),
              ],
                       ),
           ),
        ],
      ),
    );
  }
}
