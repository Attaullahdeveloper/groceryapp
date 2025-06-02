

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:grocreyapp/controlelr/constants/appAssets/appicons.dart';
import 'package:grocreyapp/controlelr/constants/appAssets/appimages.dart';
import 'package:grocreyapp/controlelr/constants/appColors/appcolors.dart';
import 'package:grocreyapp/controlelr/widgets/green_button_widget.dart';
import 'package:grocreyapp/controlelr/widgets/text-widget.dart';
import 'package:grocreyapp/models/shop_model_class/shop-model.dart';
import 'package:grocreyapp/views/home_views/new_shop_screen/ShopPro_detail.dart';

class SeeallScreeview extends StatefulWidget {
  const SeeallScreeview({super.key});

  @override
  State<SeeallScreeview> createState() => _SeeallScreeviewState();
}

class _SeeallScreeviewState extends State<SeeallScreeview> {
  List<ShopModel> seealllist=[
    ShopModel(subtext: '325ml,Price', image: AppImages.seeall1, maintext: 'Diet Coke', pricetext: '1.99'),
    ShopModel(subtext: '325ml,Price', image: AppImages.seeall2, maintext: 'Sprite Cane', pricetext: '2.99'),
    ShopModel(subtext: '325ml,Price', image:AppImages.seeall3 , maintext: 'Apple & Grapes', pricetext: '3.99'),
    ShopModel(subtext: '325ml,Price', image: AppImages.seeall4, maintext: 'Orange Juice', pricetext: '4.99'),
    ShopModel(subtext: '325ml,Price', image: AppImages.seeall5, maintext: 'Coke Cane', pricetext: '5.99'),
    ShopModel(subtext: '325ml,Price', image:AppImages.seeall6 , maintext: 'Pepsi Cane', pricetext: '6.99'),
    ShopModel(subtext: '325ml,Price', image: AppImages.seeall1, maintext: 'Diet Coke', pricetext: '1.99'),
    ShopModel(subtext: '325ml,Price', image: AppImages.seeall2, maintext: 'Sprite Cane', pricetext: '2.99'),
    ShopModel(subtext: '325ml,Price', image:AppImages.seeall3 , maintext: 'Apple & Grapes', pricetext: '3.99'),
    ShopModel(subtext: '325ml,Price', image: AppImages.seeall4, maintext: 'Orange Juice', pricetext: '4.99'),
    ShopModel(subtext: '325ml,Price', image: AppImages.seeall5, maintext: 'Coke Cane', pricetext: '5.99'),
    ShopModel(subtext: '325ml,Price', image:AppImages.seeall6 , maintext: 'Pepsi Cane', pricetext: '6.99'),

  ];
  // for check boxes--------------------
  bool option1=false;
  bool option2=false;
  bool option3=false;
  bool option4=false;
  bool option5=false;
  bool option6=false;
  bool option7=false;
  bool option8=false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Get.back();
        }, icon: ImageIcon(AssetImage(AppIcons.appleftarrow)),),
        title: Padding(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Text('Beverages')),
        actions: [
          IconButton(onPressed: (){
            // bottom sheet---------------------------
            showModalBottomSheet(
              backgroundColor: Color(0xffFAF3E0),
                context: context,
                isScrollControlled: true,// for full screen-----------
             //  barrierColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                builder: (context){
              return StatefulBuilder(
                  builder: (context,setState){
                    return Container(
                      //  LIMIT THE HEIGHT
                      height: MediaQuery.of(context).size.height * 0.9, // 60% height
                      child: Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // icons and text----------------------------------------------------------
                            Row(
                              children: [
                                IconButton(onPressed: (){
                                  Navigator.pop(context);
                                  // for reseting the checked data when the bottom sheet dissapear-------------------
                                  Future.delayed(Duration(milliseconds: 300),(){
                                    option1=false;
                                    option2=false;
                                    option3=false;
                                    option4=false;
                                    option5=false;
                                    option6=false;
                                    option7=false;
                                    option8=false;
                                  });
                                }, icon: Icon(Icons.close,color: Colors.black,)),
                                SizedBox(width:100 ,),
                                Textwidget(text: 'Select', fontcolor: Colors.black, fontsize: 18),

                              ],
                            ),
                            SizedBox(height: 30,),
  //------------------------------------------------------------------------first four items--------------------------------------------------------------------------
                            Padding(
                                padding:EdgeInsets.symmetric(horizontal:15),
                                child: Textwidget(text: 'Categories', fontcolor: Colors.black, fontsize: 24)),
                            // check fields starts-------------------------------------------
                            //1---------------------------------------
                            SizedBox(height: 10,),
                            Row(children: [
                              Checkbox(
                                  activeColor: AppColors.gmaincolor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4)
                                  ),
                                  value: option1,
                                  onChanged: ((value){
                                    option1=value!;
                                    setState(() {});
                                  })),
                              Textwidget(text: 'Diet Coke', fontcolor:option1?AppColors.gmaincolor:Colors.black ,fontsize: 16,
                              )
                            ],),
                            //2-----------------------------
                            Row(
                              children: [
                                Checkbox(
                                  activeColor: AppColors.gmaincolor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    value: option2,
                                    onChanged: (value){
                                      option2=value!;
                                     setState((){});
                                    }),
                                Textwidget(text: 'Sprite Cane', fontcolor: option2?AppColors.gmaincolor:Colors.black, fontsize: 16),
                              ],
                            ),
                            //3-------------------
                            Row(
                              children: [
                                Checkbox(
                                    activeColor: AppColors.gmaincolor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    value: option3,
                                    onChanged: (value){
                                      option3=value!;
                                      setState((){});
                                    }),
                                Textwidget(text: 'Apples & Grapes', fontcolor: option3?AppColors.gmaincolor:Colors.black, fontsize: 16),
                              ],
                            ),
                            //4---------------------
                            Row(
                              children: [
                                Checkbox(
                                    activeColor: AppColors.gmaincolor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    value: option4,
                                    onChanged: (value){
                                      option4=value!;
                                      setState((){});
                                    }),
                                Textwidget(text: 'Orange Juice', fontcolor: option4?AppColors.gmaincolor:Colors.black, fontsize: 16),
                              ],
                            ),
 //---------------------------------------------------------------------------2nd items---------------------------------------------------------------
                           SizedBox(height: 20,),
                            Padding(
                                padding:EdgeInsets.symmetric(horizontal:15),
                                child: Textwidget(text: 'Brand', fontcolor: Colors.black, fontsize: 24)),
                            // check fields starts-------------------------------------------
                            //1---------------------------------------
                            SizedBox(height: 10,),
                            Row(children: [
                              Checkbox(
                                  activeColor: AppColors.gmaincolor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4)
                                  ),
                                  value: option5,
                                  onChanged: ((value){
                                    option5=value!;
                                    setState(() {});
                                  })),
                              Textwidget(text: 'Individual Collection', fontcolor:option5?AppColors.gmaincolor:Colors.black ,fontsize: 16,
                              )
                            ],),
                            //2-----------------------------
                            Row(
                              children: [
                                Checkbox(
                                    activeColor: AppColors.gmaincolor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    value: option6,
                                    onChanged: (value){
                                      option6=value!;
                                      setState((){});
                                    }),
                                Textwidget(text: 'Coca Cola', fontcolor: option6?AppColors.gmaincolor:Colors.black, fontsize: 16),
                              ],
                            ),
                            //3-------------------
                            Row(
                              children: [
                                Checkbox(
                                    activeColor: AppColors.gmaincolor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    value: option7,
                                    onChanged: (value){
                                      option7=value!;
                                      setState((){});
                                    }),
                                Textwidget(text: 'ifad', fontcolor: option7?AppColors.gmaincolor:Colors.black, fontsize: 16),
                              ],
                            ),
                            //4---------------------
                            Row(
                              children: [
                                Checkbox(
                                    activeColor: AppColors.gmaincolor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    value: option8,
                                    onChanged: (value){
                                      option8=value!;
                                      setState((){});
                                    }),
                                Textwidget(text: 'Kazi farmas', fontcolor: option8?AppColors.gmaincolor:Colors.black, fontsize: 16),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Align(
                              alignment:Alignment.center,
                              child: GreenBUttonWidget(text: 'Apply filter', onpress: (){
                                Get.back();
                                option1=false;
                                option2=false;
                                option3=false;
                                option4=false;
                                option5=false;
                                option6=false;
                                option7=false;
                                option8=false;
                              }),
                            )

                          ],
                        ),
                      ),
                    );
                  });
                });

          }, icon: ImageIcon(AssetImage(AppIcons.filtericon)),),
          SizedBox(width: 10,),
        ],
      ),
      body:Column(
        children: [
         
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                 crossAxisSpacing: 10,
                childAspectRatio: 0.8,
                mainAxisSpacing: 10,
              ),
                  itemCount: 12,
                  itemBuilder: (context,index){
                return InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Newproductdetail(
                        maintext: seealllist[index].maintext.toString(),
                        subtext: seealllist[index].subtext.toString(),
                        image: seealllist[index].image.toString(),
                        pricetext: seealllist[index].pricetext.toString())));
                  },
                  child: Container(
                    width: 152,
                    height: 230,
                    decoration: BoxDecoration(

                      border: Border.all(color: Colors.grey.shade400),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10,),
                        Align(
                            alignment: Alignment.center,
                            child: Image.asset(seealllist[index].image.toString())),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: Textwidget(text: seealllist[index].maintext.toString(), fontcolor: Colors.black, fontsize: 16)),
                        Padding(

                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: Textwidget(text: seealllist[index].subtext.toString(), fontcolor: AppColors.subtext, fontsize: 14)),
                        Row(children: [
                          SizedBox(width: 5,),
                         Textwidget(text: '\$${seealllist[index].pricetext.toString()}', fontcolor: Colors.black, fontsize: 16,),
                          Spacer(),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(17),
                                color: AppColors.gmaincolor
                            ),
                            child: Center(child: IconButton(onPressed: (){}, icon: Icon(Icons.add))),
                          ),
                          SizedBox(width: 5,),
                        ],)
                        ],
                    ),
                  ),
                );
                  }),
            ),
          ),
          
        ],
      ),
    );
  }
}
