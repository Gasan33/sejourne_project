import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../../common/widgets/icons/circular_icon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/device/device_utility.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> items = [
      TTexts.businessBayLabel,
      TTexts.dubaiHillsLabel,
      TTexts.dubaiMarinaLabel,
      TTexts.laCoteLabel,
      TTexts.downTownLabel,

    ];
    String? selectedValue;
    return TRoundedContainer(
      margin: const EdgeInsets.only(top: TSizes.defaultSpace),
      padding: const EdgeInsets.symmetric(
          horizontal: TSizes.md, vertical: TSizes.sm),
      gradient: TColors.linerGradient,
      height: TDeviceUtils.getScreenHeight() * 0.18,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          /// Location and menu and notification Icons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  /// Menu Icon
                  const Center(child: TCircularIcon(icon: TImage.menuIcon,)),
                  const SizedBox(
                    width: TSizes.md,
                  ),
                  /// Location And Drop Down Menu Column
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// Location Label
                      Text(
                        TTexts.locationLabel,
                        style: Theme.of(context)
                            .textTheme
                            .labelSmall!
                            .apply(color: TColors.white),
                      ),
                      /// Drop down menu
                      Row(
                        children: [
                          Image.asset(
                            TImage.homeLocationIcon,
                            width: TSizes.iconSm,
                            height: TSizes.iconSm,
                            color: TColors.white,
                          ),
                          SizedBox(
                            width: TDeviceUtils.getScreenWidth(context)*0.25,
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton2<String>(
                                isExpanded: true,
                                dropdownStyleData: DropdownStyleData(
                                  width: TDeviceUtils.getScreenWidth(context)*0.50
                                ),
                                hint: Text(
                                  TTexts.dropDownLabel,
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelSmall!
                                      .apply(color: TColors.white),
                                  maxLines: 1,
                                ),
                                items: items
                                    .map((String item) =>
                                    DropdownMenuItem<String>(
                                      value: item,
                                      child: Text(
                                        item,
                              
                                      ),
                                    ))
                                    .toList(),
                                value: selectedValue,
                                onChanged: (String? value) {
                                  selectedValue = value;
                                },
                                iconStyleData: IconStyleData(
                                    icon: Image.asset(TImage.arrowDownIcon),
                                    iconEnabledColor: TColors.white,
                                    iconSize: TSizes.xl
                                ),
                                buttonStyleData:
                                const ButtonStyleData(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 0),
                                  height: 40,
                                  width: 140,
                                ),
                                menuItemStyleData:
                                const MenuItemStyleData(
                                  height: 40,
                              
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),

              /// Location and notification Icons
              const Row(
                children: [
                  /// Location icon
                  TCircularIcon(
                    icon: TImage.mapIcon,
                  ),
                  SizedBox(
                    width: TSizes.md,
                  ),

                  /// notification Icon
                  TCircularIcon(icon: TImage.notificationIcon),
                ],
              ),
            ],
          ),

          /// Search and Filter row
          SizedBox(
            height: 48,
            child: Row(
              children: [
                const Expanded(
                    flex: 11,
                    child: TSearchContainer(
                      text: "Search",
                      padding: EdgeInsets.zero,
                    )),
                const SizedBox(
                  width: TSizes.sm,
                ),
                Expanded(
                  flex: 2,
                  child: TRoundedContainer(
                    padding: const EdgeInsets.all(TSizes.sm+2),
                    backgroundColor: TColors.white,
                    isGradient: false,
                    radius: TSizes.sm,
                    width: TSizes.iconLg,
                    height: 44,
                    child: Image.asset(TImage.filterIcon),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
