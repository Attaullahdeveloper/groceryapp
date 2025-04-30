import 'package:flutter/material.dart';
import 'package:grocreyapp/controlelr/constants/appAssets/appicons.dart';
import 'package:grocreyapp/controlelr/constants/appAssets/appimages.dart';
import 'package:grocreyapp/controlelr/constants/appColors/appcolors.dart';
import 'package:grocreyapp/controlelr/widgets/text-widget.dart';
class Loctionscreen extends StatefulWidget {
  const Loctionscreen({super.key});

  @override
  State<Loctionscreen> createState() => _LoctionscreenState();
}

class _LoctionscreenState extends State<Loctionscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Image.asset(AppImages.backimg),


          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
            
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 30,horizontal: 10),
                  child: ImageIcon(AssetImage(AppIcons.appleftarrow)
                  ),
                ),
                Align(
                    alignment: Alignment.center,
                    child: Image.asset(AppImages.location)),
                SizedBox(height: 10,),
                Align(alignment:Alignment.center,child: Textwidget(text: 'Select Your Location', fontcolor: AppColors.blackcolor, fontsize: 26)),
                SizedBox(height: 10,),
                Align(alignment:Alignment.center,child: Textwidget(text: 'Switch on your location to stay in tune with', fontcolor: AppColors.subtext, fontsize: 16)),
                Align(alignment:Alignment.center,child: Textwidget(text: 'whats happening in your area', fontcolor: AppColors.subtext, fontsize: 16)),
                SizedBox(height: 30,),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Textwidget(text: 'Your Zone', fontcolor: AppColors.subtext, fontsize: 16)),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.9,
                    child: TextFormField(
            
                      decoration: InputDecoration(
                        suffixIcon: ImageIcon(AssetImage(AppImages.downarrow)),
                        hintText: 'Type your Zone',
                        hintStyle: TextStyle(fontSize: 14,color: AppColors.subtext),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: AppColors.subtext)
                        )
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40,),
                Stack(
                  children: [
                    Image.asset(AppImages.bottomimg),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Textwidget(text: 'Your Area', fontcolor: AppColors.subtext, fontsize: 16)),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: MediaQuery.of(context).size.width*0.9,
                            child: TextFormField(

                              decoration: InputDecoration(
                                suffixIcon: ImageIcon(AssetImage(AppImages.downarrow)),
                                hintText: 'Type your Area',
                                hintStyle: TextStyle(fontSize: 14,color: AppColors.subtext),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 40,),
                        Align(
                          alignment: Alignment.center,
                          child: InkWell(
                            onTap: (){},
                            child: Container(
                              height: 60,
                              width: 330,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(19),
                                color: AppColors.gmaincolor,
                              ),
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Textwidget(text: 'Submit', fontcolor: Colors.white, fontsize: 18)),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
            
              ],
            ),
          ),
        ],
      ),
    );
  }
}
