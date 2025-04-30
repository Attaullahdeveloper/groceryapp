import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocreyapp/controlelr/constants/appAssets/appicons.dart';
import 'package:grocreyapp/controlelr/constants/appAssets/appimages.dart';
import 'package:grocreyapp/controlelr/constants/appColors/appcolors.dart';
import 'package:grocreyapp/controlelr/widgets/text-widget.dart';
import 'package:grocreyapp/views/auth_views/Verfification_screen/verificaton-screen.dart';
import 'package:grocreyapp/views/auth_views/signinscreen/signin-screen.dart';
class Numberscreen extends StatefulWidget {
  const Numberscreen({super.key});

  @override
  State<Numberscreen> createState() => _NumberscreenState();
}

class _NumberscreenState extends State<Numberscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ElevatedButton(onPressed: (){
        Navigator.push(context, CupertinoPageRoute(builder: (context)=>Verificationscreen()));
      },
          style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
            padding: EdgeInsets.all(20),
            backgroundColor: Color(0xff53B175),


          ),
          child: ImageIcon(AssetImage(AppIcons.apprightarrow
          ))),
body: Stack(
  children: [
    Align(
        alignment: Alignment.topLeft,
        child: Image.asset(AppImages.backimg,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.fitWidth,

        )

    ),
    SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // for the Icon at the top-----------------
          Padding(
              padding: EdgeInsets.symmetric(vertical: 50,horizontal: 10),
              child: IconButton(onPressed: (){
                Navigator.push(context, CupertinoPageRoute(builder: (context)=>Signinscreen()));
              }, icon: ImageIcon(AssetImage(AppIcons.appleftarrow)))
          ),
          SizedBox(height: 20,),
          Padding(
          padding: EdgeInsets.symmetric(vertical: 30,horizontal: 25),
          child: Text('Enter your mobile number',
          style: GoogleFonts.questrial(
          fontWeight: FontWeight.bold,
          fontSize: 26,
          ),)),
          SizedBox(height: 10,),
          // for the second text---------------
          Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Text('Mobile Number',style: TextStyle(fontSize: 15,color: Color(0xff7C7C7C)),)),
          // for the text field ------------------
          Padding(
          padding: EdgeInsets.all(20),
          child: TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
          prefixIcon: SizedBox(
          width: 90,
          child: Row(// row for the textform field---------------------------
          children: [
          Image.asset('figmaimg/figma5.png'),
          SizedBox(width: 8,),
          Text('+888',style: TextStyle(fontSize: 18),)
          ],
          ),
          )

          ),

          ),
          ),
          SizedBox(height: 430,),
        ],
      ),
    )
  ],
),


    );
  }
}
