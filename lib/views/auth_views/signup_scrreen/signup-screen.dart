import 'package:flutter/material.dart';
import 'package:grocreyapp/controlelr/constants/appAssets/appicons.dart';
import 'package:grocreyapp/controlelr/constants/appAssets/appimages.dart';
import 'package:grocreyapp/controlelr/constants/appColors/appcolors.dart';
import 'package:grocreyapp/controlelr/widgets/green_button_widget.dart';
import 'package:grocreyapp/controlelr/widgets/text-widget.dart';
class Signupscreen extends StatefulWidget {
  const Signupscreen({super.key});

  @override
  State<Signupscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Signupscreen> {
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
                    child: Textwidget(text: 'Signup', fontcolor: Colors.black, fontsize: 26)),
                SizedBox(height: 2,),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 17),
                    child: Textwidget(text: 'Enter your credential to continue', fontcolor: AppColors.subtext, fontsize: 16)),
                SizedBox(height: 30,),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 17),
                    child: Textwidget(text: 'Username', fontcolor: AppColors.subtext, fontsize: 16)),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    decoration: BoxDecoration(

                    ),
                    width: MediaQuery.of(context).size.width*0.9,
                    child: TextFormField(
                      controller: emailcontroller,
                      decoration: InputDecoration(

                          hintText: 'Enter user name',
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
                          // for the eye button---------------------------------
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
                        // for the text after the forgot password text--------------------
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Row(children: [
                           Textwidget(text: 'By continuing agree to our', fontcolor: AppColors.subtext, fontsize: 14),
                            TextButton(onPressed: (){}, child: Textwidget(text: 'Terms of Service', fontcolor: AppColors.gmaincolor, fontsize: 14),),
                          ],),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Row(children: [
                            Textwidget(text: 'and', fontcolor: AppColors.subtext, fontsize: 14),
                            TextButton(onPressed: (){}, child: Textwidget(text: 'Privacy and Policy', fontcolor: AppColors.gmaincolor, fontsize: 14),),
                          ],),
                        ),
                        SizedBox(height: 20,),
                        //button start-----------------------
                       GreenBUttonWidget(text: 'Sign Up', onpress: (){}),
                       
                        SizedBox(height: 2,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Textwidget(text: 'Dont have any account?', fontcolor: Colors.black, fontsize: 14),
                            SizedBox(width: 4,),
                            TextButton(onPressed: (){}, child: Textwidget(text: 'Signup', fontcolor: AppColors.gmaincolor, fontsize: 14) )

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
