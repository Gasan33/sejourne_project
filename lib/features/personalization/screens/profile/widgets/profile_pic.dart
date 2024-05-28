import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../common/widgets/images/circular_image.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //final controller = UserController.instance;
    return SizedBox(
        height: 115,
        width: 115,
        child: Stack(
          fit: StackFit.expand,
          children: [
             const TCircularImage(
                image: TImage.user1,
                 height: 100,
                 width: 100,
               fit: BoxFit.cover,
              ),
            Positioned(
              right: 0,
              bottom: 0,
              child: SizedBox(
                height: TSizes.xl,
                width: TSizes.xl,
                child: FloatingActionButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                    side: const BorderSide(color: Colors.white),
                  ),
                  backgroundColor: Colors.grey[200],
                  onPressed: () {
                    Get.bottomSheet(
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16.0),
                              topRight: Radius.circular(16.0)),
                        ),
                        child: Wrap(
                          alignment: WrapAlignment.end,
                          crossAxisAlignment: WrapCrossAlignment.end,
                          children: [
                            ListTile(
                              leading: const Icon(Icons.camera),
                              title: const Text("camera"),
                              onTap: () {
                                Get.back();
                              //   controller.uploadUserProfilePicture(
                              //       ImageSource.camera);
                               },
                            ),
                            ListTile(
                              leading: const Icon(Icons.image),
                              title: const Text(
                                  "gallery"),
                              onTap: () {
                                Get.back();
                                // controller.uploadUserProfilePicture(
                                //     ImageSource.gallery);
                              },
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  child: const Icon(Icons.camera_alt),
                ),
              ),
            )
          ],
        ),
      );
  }
}
