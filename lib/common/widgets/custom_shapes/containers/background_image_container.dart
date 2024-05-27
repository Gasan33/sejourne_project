import 'package:flutter/material.dart';
import 'package:sejourne_project/utils/constants/image_strings.dart';
class BackgroundImageContainer extends StatelessWidget {
  const BackgroundImageContainer({
    super.key, required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage( TImage.backgroundImage,),
          fit: BoxFit.contain
        ),

      ),
      child: child,
    );
  }
}