import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../../utils/constants/image_strings.dart';
import 'horizontal_icon_text.dart';

class FeaturesWidget extends StatelessWidget {
  const FeaturesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              HorizontalIconText(
                isSub: false,
                icon: TImage.city,
                title: "City skyline view",
              ),
              HorizontalIconText(
                isSub: false,
                icon: TImage.wifi,
                title: "Wifi",
              ),
              HorizontalIconText(
                isSub: false,
                icon: TImage.parking,
                title: "Free parking on premises",
              ),
              HorizontalIconText(
                isSub: false,
                icon: TImage.washer,
                title: "Washer",
              ),
              HorizontalIconText(
                isSub: false,
                icon: TImage.kitchen,
                title: "Kitchen",
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              HorizontalIconText(
                isSub: false,
                icon: TImage.workSpace,
                title: "Dedicated workspace",
              ),
              HorizontalIconText(
                isSub: false,
                icon: TImage.tv,
                title: "55\" TV",
              ),
              HorizontalIconText(
                isSub: false,
                icon: TImage.ac,
                title: "Air conditioning",
              ),
              HorizontalIconText(
                isSub: false,
                icon: TImage.drying,
                title: "Drying rack for clothing",
              ),
            ],
          ),
        ),
      ],
    );
  }
}
