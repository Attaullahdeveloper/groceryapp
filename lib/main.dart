import 'package:flutter/material.dart';
import 'package:grocreyapp/controlelr/constants/appAssets/appimages.dart';
import 'package:grocreyapp/models/shop_model_class/shop-model.dart';
import 'package:grocreyapp/views/auth_views/login_screen/login-screen.dart';

import 'package:grocreyapp/views/auth_views/signinscreen/signin-screen.dart';
import 'package:grocreyapp/views/auth_views/signup_scrreen/signup-screen.dart';
import 'package:grocreyapp/views/startingscreen/onbording_screen/Onboarding-screen.dart';
import 'package:grocreyapp/views/startingscreen/splash_screen/splash-screen.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
List<ShopModel>explusiveList=[
  ShopModel(subtext: 'subtextof banana', image: AppImages.banaImage, maintext: 'jdhf', pricetext: '65'),
  ShopModel(subtext: 'subtextof appale', image: AppImages.appleimg, maintext: 'jdhf', pricetext: '65'),
  ShopModel(subtext: 'subtextof chicken', image: AppImages.chicken, maintext: 'jdhf', pricetext: '65'),
  ShopModel(subtext: 'subtextof banana', image: AppImages.banaImage, maintext: 'jdhf', pricetext: '65'),
  ShopModel(subtext: 'subtextof appale', image: AppImages.appleimg, maintext: 'jdhf', pricetext: '65'),
  ShopModel(subtext: 'subtextof chicken', image: AppImages.chicken, maintext: 'jdhf', pricetext: '65'),
];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:Scaffold(
        body: Column(children: [
          Expanded(child: ListView.builder(
            scrollDirection: Axis.horizontal,
              itemCount: explusiveList.length,
              itemBuilder:(context,i){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetails(image:
                      explusiveList[i].image.toString()
                      )));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all()
                      ),
                      child: Column(children: [
                        Image.asset(explusiveList[i].image.toString()),
                        Text(explusiveList[i].maintext.toString())
                      ],),
                    ),
                  ),
                );
              }))
        ],),
      )
      //()//Shopscreen()// IntroClass()//Numberscreen()//Loginscreen()//Loctionscreen()//Splashscreen(),

    );
  }
}




class ProductDetails extends StatelessWidget {
 final String image;
  const ProductDetails({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(image))
          ),
        )),
        Expanded(child: Container())
      ],),
    );
  }
}




