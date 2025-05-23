import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:grocreyapp/check-box.dart';
import 'package:grocreyapp/controlelr/constants/appAssets/appimages.dart';
import 'package:grocreyapp/controlelr/widgets/small_add_button.dart';
import 'package:grocreyapp/models/shop_model_class/shop-model.dart';
import 'package:grocreyapp/radio-button.dart';
import 'package:grocreyapp/text-field-class.dart';

import 'package:grocreyapp/views/auth_views/login_screen/login-screen.dart';

import 'package:grocreyapp/views/auth_views/signinscreen/signin-screen.dart';
import 'package:grocreyapp/views/auth_views/signup_scrreen/signup-screen.dart';
import 'package:grocreyapp/views/bottom_vav_bar/bottom-vav-bar.dart';
import 'package:grocreyapp/views/home_views/explore_view/explore_view.dart';
import 'package:grocreyapp/views/home_views/new_shop_screen/ShopPro_detail.dart';
import 'package:grocreyapp/views/home_views/new_shop_screen/new_shop_screen.dart';
import 'package:grocreyapp/views/home_views/shop_view/prodduct_detail_screen.dart';
import 'package:grocreyapp/views/home_views/shop_view/shop_view.dart';
import 'package:grocreyapp/views/startingscreen/onbording_screen/Onboarding-screen.dart';
import 'package:grocreyapp/views/startingscreen/splash_screen/splash-screen.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ExploreView()//BottomBar()//RadioClass()//Newshopscreen(),
      // Newopscreen(maintext: '', subtext: 'subtext', image: 'image')//Newshopscreen()//Productdetailscreen(image: AppImages.appleimg,maintext: ,),
     // Shopscreen()// IntroClass()//Numberscreen()//Loginscreen()//Loctionscreen()//Splashscreen(),

    );
  }
}









