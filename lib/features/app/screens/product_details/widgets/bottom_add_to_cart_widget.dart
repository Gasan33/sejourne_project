import 'package:flutter/material.dart';
import 'package:sejourne_project/common/styles/shadows.dart';
import 'package:sejourne_project/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:sejourne_project/utils/constants/image_strings.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class TBottomAddToCart extends StatelessWidget {
  const TBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(TSizes.sm),
      height: 72,
      decoration: BoxDecoration(
          color: TColors.white,
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(TSizes.cardRadiusLg),
            topRight: Radius.circular(TSizes.cardRadiusLg),
          )),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(
            flex: 2,
            child: CheckInButton(
              title: "Check in",
              subTitle: "Add dates",
            ),
          ),
          const SizedBox(
            width: TSizes.xs,
          ),
          const Expanded(
            flex: 2,
            child: CheckInButton(
              title: "Check out",
              subTitle: "Add dates",
            ),
          ),
          const SizedBox(
            width: TSizes.xs,
          ),
          const Expanded(
            flex: 2,
            child: CheckInButton(
              title: "Guests",
              subTitle: "Add guests",
            ),
          ),
          const SizedBox(
            width: TSizes.xs,
          ),
          Expanded(
            flex: 1,
              child: InkWell(
                onTap: (){},
                child: TRoundedContainer(
                  gradient: TColors.linerGradient2,
                  margin: const EdgeInsets.symmetric(vertical: TSizes.xs-2),
                  padding: EdgeInsets.zero,
                  radius: 10,
                  child: ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      side: const BorderSide(color: Colors.transparent),
                      padding: EdgeInsets.zero

                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(TImage.bookNow,height: TSizes.xl,),
                        Text("Book Now",style: Theme.of(context).textTheme.displaySmall!.apply(color: TColors.white),),

                      ],
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}

class CheckInButton extends StatelessWidget {
  const CheckInButton({
    super.key, required this.title, required this.subTitle,
  });
  final String title,subTitle;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(TSizes.sm),
        alignment: Alignment.centerLeft,
        backgroundColor: TColors.grey,
        side: const BorderSide(color: TColors.softGrey),
      ),
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,overflow:TextOverflow.ellipsis,style: Theme.of(context).textTheme.labelMedium!.apply(color: TColors.darkerGrey),),
          Text(subTitle,style: Theme.of(context).textTheme.displaySmall,),
        ],
      ),
    );
  }
}
