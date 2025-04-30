import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:grocreyapp/controlelr/constants/appColors/appcolors.dart';
import 'package:grocreyapp/views/startingscreen/onbording_screen/Onboarding-screen.dart';
class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      Navigator.push(context, CupertinoPageRoute(builder: (context)=>Onboardingscreen()));
    });


  }
  @override
  Widget build(BuildContext context) {
    AppColors obj=AppColors();
    return Scaffold(
        backgroundColor:Color(0xff53B175),
        //OR
        //Color(0xff53B175),
        body: Center(
            child: Image.asset('figmaimg/figma3.png')
        )
    );
  }
}
