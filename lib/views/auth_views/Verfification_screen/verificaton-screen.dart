import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocreyapp/controlelr/constants/appAssets/appicons.dart';
import 'package:grocreyapp/controlelr/constants/appAssets/appimages.dart';
import 'package:grocreyapp/controlelr/constants/appColors/appcolors.dart';
import 'package:grocreyapp/controlelr/widgets/text-widget.dart';
import 'package:grocreyapp/views/auth_views/location_screen/location-verification-screen.dart';
import 'package:grocreyapp/views/auth_views/number_screen/number-entering-screen.dart';
class Verificationscreen extends StatefulWidget {
  const Verificationscreen({super.key});

  @override
  State<Verificationscreen> createState() => _VerificationscreenState();
}

class _VerificationscreenState extends State<Verificationscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      floatingActionButton: Row(
        children: [
        Padding(
            padding: EdgeInsets.symmetric(horizontal:30),
            child: Textwidget(text: 'Resend code', fontcolor: AppColors.gmaincolor, fontsize: 15)),
          Spacer(),
          ElevatedButton(onPressed: (){
            Navigator.push(context, CupertinoPageRoute(builder: (context)=>Loctionscreen()));
          },
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(20),
                backgroundColor: Color(0xff53B175),


              ),
              child: ImageIcon(AssetImage(AppIcons.apprightarrow
              ))),
        ],
      ),

    // backgroundColor: Colors.green,
      body: Stack(
        children: [
          Align(
        alignment: Alignment.topLeft,
        child: Image.asset(AppImages.backimg,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.fitWidth,


      ),


          ),

      Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // for the top icons------------------
        Padding(
            padding: EdgeInsets.symmetric(vertical: 50,horizontal: 10),
            child: IconButton(onPressed: (){
              Navigator.push(context, CupertinoPageRoute(builder: (context)=>Numberscreen()));
            }, icon: ImageIcon(AssetImage(AppIcons.appleftarrow)))),
      SizedBox(height: 20,),

      Padding(
      padding: EdgeInsets.symmetric(vertical: 30,horizontal: 25),
      child: Textwidget(text: 'Enter your 4-digit code',fontsize: 20,fontcolor: Colors.black,)),

      Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Textwidget(text: 'Code', fontcolor: Colors.black, fontsize: 15)),
      Padding(
      padding: EdgeInsets.all(20),
      child: TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
      hintText: '- - - -',
      contentPadding:EdgeInsets.all(5),

      ),
      ),
      )

      ],
      ),
        ],
      ),
    );
  }
}
