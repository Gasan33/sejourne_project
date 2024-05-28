import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:sejourne_project/common/widgets/custom_shapes/containers/circular_container.dart';

import '../../../../../common/widgets/images/circular_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class MessageProfilePic extends StatelessWidget {
  const MessageProfilePic({
    super.key, this.posX=10, this.posY=10, required this.image,
  });
  final double posX,posY;
final String image;
  @override
  Widget build(BuildContext context) {
    //final controller = UserController.instance;
    return   SizedBox(
      height: 80,
      width: 80,
      child: Stack(
        fit: StackFit.expand,
        children: [
          DottedBorder(
            borderType: BorderType.Circle,
            color: TColors.primary,
            dashPattern: [4, 4],
            strokeWidth: 2,
            padding: const EdgeInsets.all(4),
            borderPadding: const EdgeInsets.all(4),
            child:  TCircularImage(
              image: image,
              fit: BoxFit.cover,
              height: 80,
              width: 80,
              padding: 0,
            ),
          ),
          const Positioned(
            right: 5,
            bottom: 5,
            child: TCircularContainer(
              padding: 0,
              backgroundColor: TColors.green,
              width: TSizes.md,height: TSizes.md,
            ),
          )
        ],
      ),
    );
  }
}
