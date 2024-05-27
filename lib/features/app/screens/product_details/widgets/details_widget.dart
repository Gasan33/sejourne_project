import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../../utils/constants/image_strings.dart';
import 'horizontal_icon_text.dart';
class DetailsWidget extends StatelessWidget {
  const DetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              HorizontalIconText(
                icon: TImage.priceIcon,
                title: "Price" ,
                subTitle: "350.00AED/Night",
              ),
              HorizontalIconText(
                icon: TImage.hash,
                title: "ID" ,
                subTitle: "5178",
              ),
              HorizontalIconText(
                icon: TImage.guests,
                title: "Guests" ,
                subTitle: "2",
              ),
              HorizontalIconText(
                icon: TImage.bedRoomsIcon,
                title: "Beds" ,
                subTitle: "1",
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
                icon: TImage.shawer,
                title: "Bathrooms" ,
                subTitle: "1",
              ),
              HorizontalIconText(
                icon: TImage.apart,
                title: "Type" ,
                subTitle: "Apartment, Studio",
              ),
              HorizontalIconText(
                icon: TImage.guests,
                title: "Allow Additional Guests" ,
                subTitle: "No",
              ),
            ],
          ),
        ),
      ],
    );
  }
}
