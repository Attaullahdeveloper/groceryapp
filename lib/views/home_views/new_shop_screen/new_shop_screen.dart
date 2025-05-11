import 'package:flutter/material.dart';
import 'package:grocreyapp/models/shop_model_class/shop-model.dart';
import 'package:grocreyapp/views/bottom_vav_bar/bottom-vav-bar.dart';
import 'package:grocreyapp/views/home_views/new_shop_screen/ShopPro_detail.dart';

import '../../../controlelr/constants/appAssets/appimages.dart';
import '../../../controlelr/constants/appColors/appcolors.dart';
import '../../../controlelr/widgets/text-widget.dart';

class Newshopscreen extends StatefulWidget {
  const Newshopscreen({super.key});

  @override
  State<Newshopscreen> createState() => _NewshopscreenState();
}

class _NewshopscreenState extends State<Newshopscreen> {
  List<ShopModel> exclusiveoffer=[
    ShopModel(subtext: '7pcs,priceg', image: AppImages.bananimg, maintext: 'Organic Bananas', pricetext: '4.99'),
    ShopModel(subtext: '1kg', image: AppImages.appleimg, maintext: 'Red Apples', pricetext: '4.99'),
    ShopModel(subtext: '7pcs,priceg', image: AppImages.bananimg, maintext: 'Organic Bananas', pricetext: '4.99'),
    ShopModel(subtext: '1kg', image: AppImages.appleimg, maintext: 'Red Apples', pricetext: '4.99'),

  ];
  List<ShopModel> bestselling=[
    ShopModel(subtext: '2kg', image: AppImages.tomato, maintext: 'Fresh tomatoes', pricetext:'4.99'),
    ShopModel(subtext: '3pcs,priceg', image: AppImages.nothing, maintext: 'Garlic', pricetext: '4.99'),
    ShopModel(subtext: '2kg', image: AppImages.tomato, maintext: 'Fresh tomatoes', pricetext:'4.99'),
    ShopModel(subtext: '3pcs,priceg', image: AppImages.nothing, maintext: 'Garlic', pricetext: '4.99')
  ];
  List<ShopModel> groceries=[
    ShopModel(subtext: '', image: AppImages.pulses, maintext: 'Pulses', pricetext: ''),
    ShopModel(subtext: '', image: AppImages.rice, maintext: 'Rice', pricetext: ''),
    ShopModel(subtext: '', image: AppImages.pulses, maintext: 'Pulses', pricetext: ''),
    ShopModel(subtext: '', image: AppImages.rice, maintext: 'Rice', pricetext: ''),
  ];
  List<ShopModel> lastcontainer=[
    ShopModel(subtext: '3kg', image: AppImages.meat, maintext: 'Fresh meat', pricetext: '4.99'),
    ShopModel(subtext: '3kg', image: AppImages.chicken, maintext: 'Chicken', pricetext: '4.99'),
    ShopModel(subtext: '3kg', image: AppImages.meat, maintext: 'Fresh meat', pricetext: '4.99'),
    ShopModel(subtext: '3kg', image: AppImages.chicken, maintext: 'Chicken', pricetext: '4.99'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // bottomNavigationBar: BottomBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40,),
            Align(
                alignment: Alignment.center,
                child: Image.asset(AppImages.redcarrot,width: 30,height: 30,)),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AppImages.smalllocation),
                Textwidget(text: 'Dhaka,Banassre', fontcolor: Colors.black, fontsize: 18),
              ],),
            Align(
              alignment: Alignment.center,
              child: Container(
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
            ),
            //-----------------------------search area completed------------------------------------------------------//
            SizedBox(height: 20,),
            Align(
              child:
              Container(//----------------------------------
                  width: 330,
                  height: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    //color: Colors.black,
                  ),
                  child:PageView(
                    children: [
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
                      Container(
                        child:  Stack(
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
        
                    ],
                  )
        
              ),
            ),//--------------1st container--------------------------
            //------------------------------------------slider ends----------------------------------//
            Row(
              children: [
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 17),
                    child: Textwidget(text: 'Exclusive offer', fontcolor: Colors.black, fontsize: 24)),
               SizedBox(width: 110,),
                Textwidget(text: 'See All', fontcolor: AppColors.gmaincolor, fontsize: 16),
              ],
            ),
            SizedBox(
              height: 230,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 17),
                child: ListView.builder(
                    itemCount: exclusiveoffer.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder:(context,index){
                      return
                        InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Newproductdetail(
                              maintext: exclusiveoffer[index].maintext.toString(),
                              subtext: exclusiveoffer[index].subtext.toString(),
                              image: exclusiveoffer[index].image.toString(),
                          pricetext: exclusiveoffer[index].pricetext.toString(),
                          )));
                        },
                        child: Container(
                          margin: EdgeInsets.all(5),
                          width: 152,
                          height: 230,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade400),
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding:EdgeInsets.symmetric(horizontal:12,vertical: 15),
                                    child: Image.asset(exclusiveoffer[index].image.toString())),
                               Spacer(),
                               // SizedBox(height: 20,),
                                Textwidget(text: exclusiveoffer[index].maintext.toString(), fontcolor: Colors.black, fontsize: 16),
                                Textwidget(text: exclusiveoffer[index].subtext.toString(), fontcolor: AppColors.subtext, fontsize: 14),
                              Row(children: [
                                Textwidget(text: '\$${exclusiveoffer[index].pricetext.toString()}', fontcolor: Colors.black, fontsize: 18),
                                Spacer(),
                                Container(
                                  width: 45,
                                  height: 45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(17),
                                      color: AppColors.gmaincolor
                                  ),
                                  child: Center(child: IconButton(onPressed: (){}, icon: Icon(Icons.add))),
                                ),

                              ],)

                              ],
                            ),
                          )
                        ),
                      );
                    }),
              ),
            ),
            // ------------------------------------------List builder exclusive offer-----------------------------//
          SizedBox(height: 20,),
            Row(
              children: [
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 17),
                    child: Textwidget(text: 'Best Selling', fontcolor: Colors.black, fontsize: 24)),
                SizedBox(width: 140,),
                Textwidget(text: 'See All', fontcolor: AppColors.gmaincolor, fontsize: 16),
              ],
            ),
            SizedBox(
              height: 230,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 17),
                child: ListView.builder(
                    itemCount: bestselling.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder:(context,index){
                      return
                        InkWell(
                          onTap: (){},
                          child: Container(
                              margin: EdgeInsets.all(5),
                              width: 152,
                              height: 230,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade400),
                                borderRadius: BorderRadius.circular(18),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding:EdgeInsets.symmetric(horizontal:12,vertical: 15),
                                        child: Image.asset(bestselling[index].image.toString())),
                                    Spacer(),
                                    Textwidget(text: bestselling[index].maintext.toString(), fontcolor: Colors.black, fontsize: 16),
                                    Textwidget(text: bestselling[index].subtext.toString(), fontcolor: AppColors.subtext, fontsize: 14),
                                    Row(children: [
                                      Textwidget(text: bestselling[index].pricetext.toString(), fontcolor: Colors.black, fontsize: 18),
                                      Spacer(),
                                      Container(
                                        width: 45,
                                        height: 45,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(17),
                                            color: AppColors.gmaincolor
                                        ),
                                        child: Center(child: IconButton(onPressed: (){}, icon: Icon(Icons.add))),
                                      ),
                                    ],)

                                  ],
                                ),
                              )
                          ),
                        );
                    }),
              ),
            ),
            //-------------------------------------------best selling ----------------------------
            SizedBox(height: 20,),
            Row(
              children: [
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 17),
                    child: Textwidget(text: 'Groceries', fontcolor: Colors.black, fontsize: 24)),
                SizedBox(width: 150,),
                Textwidget(text: 'See All', fontcolor: AppColors.gmaincolor, fontsize: 16),
              ],
            ),
            SizedBox(
              height: 100,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 17),
                child: ListView.builder(
                    itemCount: groceries.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){
                      return Container(
                        margin: EdgeInsets.all(5),
                        width: 240,
                        height: 100,
                        decoration: BoxDecoration(
                          color:Colors.orange.shade100,
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 10,),
                            Image.asset(groceries[index].image.toString()),
                            SizedBox(width: 10,),
                            Textwidget(text: groceries[index].maintext.toString(), fontcolor: Colors.black, fontsize:18),
                          ],
                        ),
                      );
                    }),
              ),
            ),
            //-----------------------------------------------------groceries ends------------------------------------------------------//
            SizedBox(height: 20,),
            SizedBox(
              height: 230,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 17),
                child: ListView.builder(
                    itemCount: lastcontainer.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder:(context,index){
                      return
                        InkWell(
                          onTap: (){},
                          child: Container(
                              margin: EdgeInsets.all(5),
                              width: 152,
                              height: 230,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade400),
                                borderRadius: BorderRadius.circular(18),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding:EdgeInsets.symmetric(horizontal:12,vertical: 15),
                                        child: Image.asset(lastcontainer[index].image.toString())),
                                    Spacer(),
                                    Textwidget(text: lastcontainer[index].maintext.toString(), fontcolor: Colors.black, fontsize: 16),
                                    Textwidget(text: lastcontainer[index].subtext.toString(), fontcolor: AppColors.subtext, fontsize: 14),
                                    Row(children: [
                                      Textwidget(text: lastcontainer[index].pricetext.toString(), fontcolor: Colors.black, fontsize: 18),
                                      Spacer(),
                                      Container(
                                        width: 45,
                                        height: 45,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(17),
                                            color: AppColors.gmaincolor
                                        ),
                                        child: Center(child: IconButton(onPressed: (){}, icon: Icon(Icons.add))),
                                      ),
                                    ],)

                                  ],
                                ),
                              )
                          ),
                        );
                    }),
              ),
            ),
        
          ],
        ),
      ),
    );
  }
}
