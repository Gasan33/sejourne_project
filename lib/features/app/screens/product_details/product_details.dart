import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:sejourne_project/common/widgets/custom_shapes/containers/background_image_container.dart';
import 'package:sejourne_project/features/app/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:sejourne_project/features/app/screens/product_details/widgets/details_widget.dart';
import 'package:sejourne_project/features/app/screens/product_details/widgets/features_widget.dart';
import 'package:sejourne_project/features/app/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:sejourne_project/features/app/screens/product_details/widgets/summary_widget.dart';
import 'package:sejourne_project/utils/constants/colors.dart';
import 'package:sejourne_project/utils/constants/image_strings.dart';

import '../../../../common/widgets/texts/section_header.dart';
import '../../../../utils/constants/sizes.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: const TBottomAddToCart(),
      body: BackgroundImageContainer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: TSizes.defaultSpace,),
              /// -- Product Image Slider
              const TProductImageSlider(
                banners: [
                  TImage.property,
                  TImage.property1,
                  TImage.property2,
                  TImage.property3,
                  TImage.property4,
                  TImage.property5,
                ],
              ),
        
              /// Product Details
              Padding(
                padding: const EdgeInsets.only(
                    right: TSizes.md,
                    left: TSizes.md,
                    bottom: TSizes.md,
                  top: TSizes.defaultSpace
                ),
                child: Column(
                  children: [
                    /// -- Summary Button
                    const Summary(),
                    const SizedBox(
                      height: TSizes.spaceBtwSections,
                    ),

                    /// -- About this Listing
                    const TSectionHeading(title: 'About this Listing',showActionButton: false,),
                    const SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),
                    ReadMoreText(
                      'Sejourne Holiday Homes is happy to offer you a brand new Elegant Studio at partially overlooking the lake.JLT is a vibrant mixed-use Free Zone. High-rise towers look out over manmade lakes, while a world of cafés, restaurants, retail and lifestyle awaits at ground and podium level. Perfect for your next leisure or business trips or simply if you are a resident in need of a sta....',
                      trimLines: 5,
                      trimMode: TrimMode.Line,
                      style: Theme.of(context).textTheme.labelMedium!.apply(color: TColors.darkGrey),
                      trimCollapsedText: 'Show more',
                      trimExpandedText: 'Less',
                      moreStyle: const TextStyle(fontSize: 12,fontWeight: FontWeight.w600),
                      lessStyle: const TextStyle(fontSize: 12,fontWeight: FontWeight.w600),

                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwSections,
                    ),

                    /// -- Details
                    const TSectionHeading(title: 'Details',showActionButton: false,),
                    const SizedBox(
                      height: TSizes.sm,
                    ),

                    const DetailsWidget(),
                    const SizedBox(
                      height: TSizes.spaceBtwSections,
                    ),
                    /// -- features
                    const TSectionHeading(title: 'Features',showActionButton: false,),
                    const SizedBox(
                      height: TSizes.sm,
                    ),
                    const FeaturesWidget(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

