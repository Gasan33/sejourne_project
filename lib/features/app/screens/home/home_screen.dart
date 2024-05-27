import 'package:flutter/material.dart';
import 'package:sejourne_project/common/widgets/custom_shapes/containers/background_image_container.dart';
import 'package:sejourne_project/common/widgets/texts/section_header.dart';
import 'package:sejourne_project/features/app/screens/home/widgets/home_header.dart';
import 'package:sejourne_project/features/app/screens/home/widgets/location_list.dart';
import 'package:sejourne_project/features/app/screens/home/widgets/promo_slider.dart';
import 'package:sejourne_project/features/app/screens/home/widgets/properties.dart';
import 'package:sejourne_project/utils/constants/colors.dart';
import 'package:sejourne_project/utils/constants/sizes.dart';
import 'package:sejourne_project/utils/constants/text_strings.dart';
import '../../../../utils/constants/image_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BackgroundImageContainer(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(TSizes.sm),
            child: Column(
              children: [
                /// Header 
                HomeHeader(),

                /// special for you title
                TSectionHeading(title: TTexts.specialForYouLabel,textColor: TColors.darkGrey,),

                /// -- Promo Slider
                TPromoSlider(
                  banners: [
                    TImage.promoBanner1,
                    TImage.promoBanner2,
                    TImage.promoBanner3,
                  ],
                ),
                /// location title
                TSectionHeading(title: TTexts.locationLabel,textColor: TColors.black,),

                /// location list
                LocationList(),

                /// Properties title
                TSectionHeading(title: TTexts.propertiesLabel,textColor: TColors.black,showActionButton: false,),

                /// Properties List
                Properties(),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
