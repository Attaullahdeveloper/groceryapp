import 'package:flutter/material.dart';
import 'package:grocreyapp/controlelr/constants/appAssets/appimages.dart';
import 'package:grocreyapp/controlelr/constants/appColors/appcolors.dart';
import 'package:grocreyapp/controlelr/widgets/text-widget.dart';
class Shopscreen extends StatefulWidget {
  const Shopscreen({super.key});

  @override
  State<Shopscreen> createState() => _ShopscreenState();
}

class _ShopscreenState extends State<Shopscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 40,),
          Image.asset(AppImages.redcarrot,width: 30,height: 30,),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AppImages.smalllocation),
              Textwidget(text: 'Dhaka,Banassre', fontcolor: Colors.black, fontsize: 18),
            ],),
          Container(
            width: MediaQuery.of(context).size.width*0.9,
            height: 51,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.grey.shade300,
            ),
            child:TextFormField(
              decoration: InputDecoration(
                prefixIcon: Image.asset(AppImages.search),
                hintText: 'Search Store',
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(13),))),
          //-----------------------------search area completed------------------------------------------------------//
         SizedBox(height: 20,),
          Expanded(
             flex: 20,
              child:PageView(
                children: [
                  Align(
                    child: 
                    Container(//----------------------------------
                      width: 330,
                      height: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        //color: Colors.black,
                      ),
                      child:
                      Stack(
                        children: [
                          Image.asset(AppImages.bimgshop),
                          Padding(
                              padding: EdgeInsets.symmetric(vertical: 2,horizontal: 4),
                              child: Image.asset(AppImages.leafs)),//-----2
                          Positioned(
                            top: 3,
                            child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 230),
                                child: Image.asset(AppImages.vegetable2)),
                          ),//------------3
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Image.asset(AppImages.vegetable1)),//-------------4
                          Positioned(
                            top: 40,
                            child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 140),
                                child: Image.asset(AppImages.textmain,height: 44,width: 140,)),
                          ),//-------5
                          Positioned(
                            top: 65,
                            child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 285,
                                ),
                                child: Image.asset(AppImages.vegetable3)),
                          ),
                        ],
                      ),
                    ),
                  ),//--------------1st container--------------------------
                  Align(
                    child: Container(
                      width: 330,
                      height: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        //color: Colors.black,
                      ),
                      child: Image.asset(AppImages.bimgshop),
                    ),
                  ),

                ],
              ) ,

              ),
          Expanded(
              flex: 80,
              child: Container())
        ],
      ),
    );
  }
}
