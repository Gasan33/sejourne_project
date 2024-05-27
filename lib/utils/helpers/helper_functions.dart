import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl/intl.dart';
import 'package:sejourne_project/features/authentication/controllers/login/login_controller.dart';
import 'package:sejourne_project/utils/constants/colors.dart';
import 'package:sejourne_project/utils/constants/sizes.dart';

class THelperFunctions{
  static Color? getColor(String value){
    if(value=='Green'){
      return Colors.green;
    }else if(value=='Red'){
      return Colors.red;
    }else if(value=='Blue'){
      return Colors.blue;
    }else if(value=='Pink'){
      return Colors.pink;
    }else if(value=='Grey'){
      return Colors.grey;
    }else if(value=='Purple'){
      return Colors.purple;
    }else if(value=='Black'){
      return Colors.black;
    }else if(value=='White'){
      return Colors.white;
    }else if(value=='Brown'){
      return Colors.brown;
    }else if(value=='Teal'){
      return Colors.teal;
    }else if(value=='Indigo'){
      return Colors.indigo;
    }if(value=='Yellow'){
      return Colors.yellow;
    }else{
      return null;
    }
  }

  static void showSnackBar(String message){
    ScaffoldMessenger.of(Get.context!).showSnackBar(SnackBar(content: Text(message),),);
  }

  static void showAlert(String title,String message){
    showDialog(
        context: Get.context!,
        builder: (BuildContext context){
          return AlertDialog(
            title: Text(title),
            content: Text(message),
            actions: [
               TextButton(
                   onPressed: ()=> Navigator.of(context).pop(),
                   child:const Text('Ok'),),
            ],
          );
        }
    );
  }

  static void showLogoutAlert(){
    final controller=Get.put(LoginController());
    showDialog(
        context: Get.context!,
        builder: (BuildContext context){
          return AlertDialog(
            title: const Icon(Iconsax.info_circle,size: TSizes.appBarHeight,color: TColors.primary,),
            alignment: Alignment.center,
            content: RichText(
              maxLines: 2,
              textAlign: TextAlign.center,
              text: TextSpan(
                text: "Logout?\n",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge,
                children: <TextSpan>[
                  TextSpan(
                    text: "Are you sure you want to logout?",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                  ),
                ],
              ),
            ),
            actionsAlignment: MainAxisAlignment.center,
            actions: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: ()=> controller.logout(),
                      child:const Text('Logout'),),
                  ),
                  const SizedBox(
                    height: TSizes.defaultSpace,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: OutlinedButton(
                      onPressed: ()=> Navigator.of(context).pop(),
                      child:const Text('Cancel'),),
                  ),
                ],
              ),
            ],
          );
        }
    );
  }

  static void navigateToScreen(BuildContext context,Widget screen){
    Navigator.push(context,
      MaterialPageRoute(builder: (_)=>screen),
    );
  }

  static String truncateText(String text,int maxLength){
    if(text.length<=maxLength){
      return text;
    }else{
      return '${text.substring(0,maxLength)}...';
    }
  }

  static bool isDarkMode(BuildContext context){
    return Theme.of(context).brightness==Brightness.dark;
  }

  static Size screenSize(){
    return MediaQuery.of(Get.context!).size;
  }

  static double screenHeight(){
    return MediaQuery.of(Get.context!).size.height;
  }

  static double screenWidth(){
    return MediaQuery.of(Get.context!).size.width;
  }

  static String getFormattedDate(DateTime date,{String format='dd MMM yyyy'}){
    return DateFormat(format).format(date);
  }

  static List<T> removeDuplicates<T>(List<T> list){
    return list.toSet().toList();
  }

  static List<Widget> wrapWidgets(List<Widget> widgets,int rowSize){
    final wrappedList = <Widget>[];
    for(var i=0;i<widgets.length;i+=rowSize){
      final rowChildren = widgets.sublist(i,i+rowSize>widgets.length?widgets.length:i+rowSize);
      wrappedList.add(Row(
        children: rowChildren,
      ));
    }
    return wrappedList;
  }
}