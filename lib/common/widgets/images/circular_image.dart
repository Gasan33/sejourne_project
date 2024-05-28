import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../../styles/shimmer.dart';

class TCircularImage extends StatelessWidget {
  const TCircularImage({
    super.key,
    this.fit=BoxFit.cover,
    required this.image,
    this.isNetworkImage=false,
    this.overlayColor,
    this.backgroundColor,
    this.width=56,
    this.height=56,
    this.padding=0,  this.iconSize,
  });

  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width, height, padding;
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunctions.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        border: Border.all(width: 0.5,color: TColors.white),
        borderRadius: BorderRadius.circular(100),
        color:backgroundColor ?? (dark
            ? TColors.black
            : TColors.white),
      ),
      child: Center(
        child: isNetworkImage?
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: CachedNetworkImage(
            fit: fit,
            width: double.infinity,
            height: double.infinity,
            color: overlayColor,
            imageUrl: image,
            progressIndicatorBuilder: (context,url,downloadProgress)=> const TSimmerEffect(width:55,height:55,radius: 55,),
            errorWidget: (context,url,error)=>const Icon(Icons.error),
          ),
        ):

        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image(
            fit: fit,
            image: AssetImage(image),
            height: iconSize??height,
            width: iconSize??width,
            color:overlayColor,
          ),
        ),
      ),
    );
  }
}
