import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:grocreyapp/controlelr/constants/appAssets/appimages.dart';
import 'package:grocreyapp/controlelr/constants/appColors/appcolors.dart';
import 'package:grocreyapp/controlelr/widgets/green_button_widget.dart';
import 'package:grocreyapp/controlelr/widgets/text-widget.dart';
class Confirmationscreen extends StatefulWidget {
  const Confirmationscreen({super.key});

  @override
  State<Confirmationscreen> createState() => _ConfirmationscreenState();
}

class _ConfirmationscreenState extends State<Confirmationscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('figmaimg/comp1.png',),
          fit: BoxFit.cover)
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 140,width: 40,),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Image.asset(AppImages.comp3)),
              SizedBox(width: 20,height: 15,),
              Align(
                  alignment: Alignment.center,
                  child: Textwidget(text: 'Your order has been ', fontcolor: Colors.black, fontsize:28)),
              Align(
                  alignment: Alignment.center,
                  child: Textwidget(text: 'accepted ', fontcolor: Colors.black, fontsize:28)),
              SizedBox(height: 10,),
              Align(
                  alignment: Alignment.center,
                  child: Textwidget(text: 'Your items has been placed and is on ', fontcolor: AppColors.subtext, fontsize:16)),
              Align(
                  alignment: Alignment.center,
                  child: Textwidget(text: 'its way to being proceed', fontcolor: AppColors.subtext, fontsize:16)),
              SizedBox(height: 100,),
              Align(
                  alignment: Alignment.center,
                  child: GreenBUttonWidget(text: 'Track Order', onpress:(){
                    Get.back();})),
              SizedBox(height: 10,),
              Align(
                  alignment: Alignment.center,
                  child: Textwidget(text: 'Back to Home', fontcolor: Colors.black, fontsize: 18))
            ],
          ),
        ),
      ),
    );
  }
}
