import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:grocreyapp/views/auth_views/login_screen/login-screen.dart';
import 'package:grocreyapp/views/bottom_vav_bar/bottom-vav-bar.dart';
import 'package:grocreyapp/views/home_views/Cart_view/Cart_view.dart';
import 'package:grocreyapp/views/home_views/Favourite_veiw/Favourite_view.dart';
import 'package:grocreyapp/views/home_views/Favourite_veiw/_confirmation_screen/Confirmaiton_screen.dart';
import 'package:grocreyapp/views/home_views/account_view/account_view.dart';
import 'package:grocreyapp/views/home_views/new_shop_screen/ShopPro_detail.dart';
import 'package:grocreyapp/views/home_views/new_shop_screen/seeall_screen/Seeall_screeview.dart';
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
      home:Splashscreen()//RadioClass()//Newshopscreen(),
      // Newopscreen(maintext: '', subtext: 'subtext', image: 'image')//Newshopscreen()//Productdetailscreen(image: AppImages.appleimg,maintext: ,),
     // Shopscreen()// IntroClass()//Numberscreen()//Loginscreen()//Loctionscreen()//Splashscreen(),

    );
  }
}









