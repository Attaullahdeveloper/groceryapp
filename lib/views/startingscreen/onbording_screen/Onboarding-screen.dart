import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocreyapp/controlelr/constants/appAssets/appicons.dart';
import 'package:grocreyapp/controlelr/constants/appAssets/appimages.dart';
import 'package:grocreyapp/controlelr/constants/appColors/appcolors.dart';
import 'package:grocreyapp/controlelr/constants/apptext.dart';
import 'package:grocreyapp/controlelr/widgets/green_button_widget.dart';

import '../../auth_views/signinscreen/signin-screen.dart';

class Onboardingscreen extends StatelessWidget {
  const Onboardingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child:
            Image.asset('figmaimg/figma9.png',
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,),
          ),

          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 430),
              child: Center(
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   // ImageIcon(AssetImage(AppIcons.appIconLogo),),
                    Image.asset(AppImages.whitelogo),
                    //Image.asset('figmaimg/whitelog.png',width: 48,height: 56,),
                    SizedBox(height: 10,),
                    Text('Welcome',
                    style: GoogleFonts.questrial(fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),),
                    Text('to ${AppText.appName}',
                      style: GoogleFonts.questrial(fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                      wordSpacing: 5
                      ),),
                    Text('Get your groceries in as fast as one hour',style: GoogleFonts.questrial(color: AppColors.subtext),),
                    SizedBox(height: 20,),
                   GreenBUttonWidget(text: 'Get Started', onpress: (){
                     Navigator.push(context, CupertinoPageRoute(builder: (context)=>Signinscreen()));
                   })
                    // Center(
                    //   child: InkWell(
                    //     onTap: (){
                    //       Navigator.push(context, CupertinoPageRoute(builder: (context)=>Signinscreen()));
                    //     },
                    //     child: Container(
                    //       height: 60,
                    //       width: 330,
                    //       decoration: BoxDecoration(
                    //           borderRadius: BorderRadius.circular(16),
                    //           color: Color(0xff53B175)
                    //       ),
                    //       child: Center(
                    //         child: Text('Get Started',
                    //         style: GoogleFonts.questrial(fontSize: 18,color: Colors.white),),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
