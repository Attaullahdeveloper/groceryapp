import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:grocreyapp/controlelr/constants/appAssets/appicons.dart';
import 'package:grocreyapp/controlelr/constants/appAssets/appimages.dart';
import 'package:grocreyapp/controlelr/constants/appColors/appcolors.dart';
import 'package:grocreyapp/controlelr/widgets/text-widget.dart';
import 'package:grocreyapp/views/auth_views/signup_scrreen/signup-screen.dart';
import 'package:grocreyapp/views/bottom_vav_bar/bottom-vav-bar.dart';
import 'package:grocreyapp/views/home_views/new_shop_screen/new_shop_screen.dart';
class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  TextEditingController emailcontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();
  bool ishide=true;
  // by default the text will be true means hidden----------------
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
      Stack(
        children: [
          Image.asset(AppImages.backimg),
          SingleChildScrollView(
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 30,horizontal: 10),
                    child: ImageIcon(AssetImage(AppIcons.appleftarrow))),
                Align(
                    alignment: Alignment.center,
                    child: Image.asset(AppImages.redcarrot)),
                SizedBox(height: 80,),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Textwidget(text: 'Login', fontcolor: Colors.black, fontsize: 26)),
              SizedBox(height: 2,),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 17),
                    child: Textwidget(text: 'Enter your emails and password', fontcolor: AppColors.subtext, fontsize: 16)),
            SizedBox(height: 30,),
                Padding(
                padding: EdgeInsets.symmetric(horizontal: 17),
                child: Textwidget(text: 'Email', fontcolor: AppColors.subtext, fontsize: 16)),
              Align(
                alignment: Alignment.center,
                child: Container(
                  decoration: BoxDecoration(

                ),
                  width: MediaQuery.of(context).size.width*0.9,
                  child: TextFormField(
                    controller: emailcontroller,
                    decoration: InputDecoration(

                      hintText: 'Enter your email',
                      hintStyle: TextStyle(
                        color: AppColors.subtext,
                        fontSize: 14,
                      )
                    ),
                  ),
                ),
              ),
                SizedBox(height: 30,),
                Padding(
                padding: EdgeInsets.symmetric(horizontal: 17),
                child: Textwidget(text: 'Password', fontcolor: AppColors.subtext, fontsize: 16)),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: MediaQuery.of(context).size.width*0.9,
                  child: TextFormField(
                    controller: passwordcontroller,
                    obscureText:ishide ,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(onPressed: (){
                        if(ishide==true)
                        {
                          ishide=false;
                        }
                        else{ishide=true;}
                        setState(() {

                        });
                      }, icon: ishide?ImageIcon(AssetImage(AppImages.closeeye)):Icon(Icons.remove_red_eye)),
                      hintText: 'Enter your password',
                      hintStyle: TextStyle(
                        color: AppColors.subtext,
                        fontSize: 14,
                      ),

                    ),

                  ),
                ),
              ),
              Stack(
                children: [
                  Image.asset(AppImages.bottomimg),
                  Column(
                    children: [
                      SizedBox(height: 10,),
                      Row(children: [
                        Text(''),
                        Spacer(),
                        Textwidget(text: 'Forgot Password?', fontcolor: AppColors.subtext, fontsize: 14)
                      ],
                      ),
                      SizedBox(height: 20,),
                      Align(
                        alignment: Alignment.center,
                        child: InkWell(
                          onTap: (){
                            // this code is for checking the empty field in any emaol or the password
                            if(emailcontroller.text==''|| passwordcontroller.text=='')
                              {
                             //    Get.snackbar()
                              }
                          },
                          child: InkWell(
                            onTap: (){
                              Navigator.push(context,MaterialPageRoute(builder: (context)=>BottomBar()));
                            },
                            child: Container(
                              height: 60,
                              width: 330,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(19),
                                color: AppColors.gmaincolor,
                              ),
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Textwidget(text: 'Log In', fontcolor: Colors.white, fontsize: 18)),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 2,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Textwidget(text: 'Dont have any account?', fontcolor: Colors.black, fontsize: 14),
                          SizedBox(width: 4,),
                 TextButton(onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>Signupscreen()));
                 }, child: Textwidget(text: 'Signup', fontcolor: AppColors.gmaincolor, fontsize: 14) )

                        ],)
                    ],
                  )
                ],
              )
              ],
            ),
          )
        ],
      ),
    );
  }
}
