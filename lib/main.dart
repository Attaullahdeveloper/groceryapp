import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:grocreyapp/views/home_views/new_shop_screen/ShopPro_detail.dart';
import 'package:grocreyapp/views/home_views/new_shop_screen/seeall_screen/Seeall_screeview.dart';


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
      home:SeeallScreeview()//RadioClass()//Newshopscreen(),
      // Newopscreen(maintext: '', subtext: 'subtext', image: 'image')//Newshopscreen()//Productdetailscreen(image: AppImages.appleimg,maintext: ,),
     // Shopscreen()// IntroClass()//Numberscreen()//Loginscreen()//Loctionscreen()//Splashscreen(),

    );
  }
}









