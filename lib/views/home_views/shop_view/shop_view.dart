import 'package:flutter/material.dart';
import 'package:grocreyapp/controlelr/constants/appAssets/appimages.dart';
import 'package:grocreyapp/controlelr/constants/appColors/appcolors.dart';
import 'package:grocreyapp/controlelr/widgets/small_add_button.dart';
import 'package:grocreyapp/controlelr/widgets/text-widget.dart';
import 'package:grocreyapp/models/shop_model_class/shop-model.dart';
import 'package:grocreyapp/views/bottom_vav_bar/bottom-vav-bar.dart';
import 'package:grocreyapp/views/home_views/shop_view/prodduct_detail_screen.dart';
class Shopscreen extends StatefulWidget {
  const Shopscreen({super.key});

  @override
  State<Shopscreen> createState() => _ShopscreenState();
}

class _ShopscreenState extends State<Shopscreen> {
  List<ShopModel> exclusiveoffer=[
    ShopModel(subtext: '7pcs,priceg', image:AppImages.banaImage, maintext: 'Organic Bananas', pricetext: '\$4.99'),
    ShopModel(subtext: '8pcs,priceg', image:AppImages.appleimg, maintext: 'Organic Bananas', pricetext: '\$14.99'),
    ShopModel(subtext: '9pcs,priceg', image:AppImages.banaImage, maintext: 'Organic Bananas', pricetext: '\$41.99'),
    ShopModel(subtext: '10pcs,priceg', image:AppImages.appleimg, maintext: 'Organic Bananas', pricetext: '\$42.99'),
    ShopModel(subtext: '11pcs,priceg', image:AppImages.banaImage, maintext: 'Organic Bananas', pricetext: '\$34.99'),
  ];
  List<ShopModel> bestSelling=[
    ShopModel(subtext: '7pcs,priceg', image:AppImages.banaImage, maintext: 'Organic Bananas', pricetext: '\$4.99'),
    ShopModel(subtext: '8pcs,priceg', image:AppImages.appleimg, maintext: 'Organic Bananas', pricetext: '\$14.99'),
    ShopModel(subtext: '9pcs,priceg', image:AppImages.banaImage, maintext: 'Organic Bananas', pricetext: '\$41.99'),
    ShopModel(subtext: '10pcs,priceg', image:AppImages.appleimg, maintext: 'Organic Bananas', pricetext: '\$42.99'),
    ShopModel(subtext: '11pcs,priceg', image:AppImages.banaImage, maintext: 'Organic Bananas', pricetext: '\$34.99'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // bottomNavigationBar: BottomBar(),// this is already made in anoterh class-----------
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
                Spacer(),
                Textwidget(text: 'See All', fontcolor: AppColors.gmaincolor, fontsize: 16),
              ],
            ),
            SizedBox(
              height: 250,
              child: ListView.builder
                (
                  itemCount: exclusiveoffer.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                    return  InkWell(
                      onTap:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Productdetailscreen(
                            image: exclusiveoffer[index].image.toString(), maintext:
                        exclusiveoffer[index].maintext.toString(),
                            pricetext: exclusiveoffer[index].pricetext.toString(),
                            desription: exclusiveoffer[index].maintext.toString())));
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        width: 150,
                        height: 220,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding:EdgeInsets.symmetric(horizontal:20,vertical: 10),
                                child: Image.asset(exclusiveoffer[index].image.toString())),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                child: Textwidget(text: exclusiveoffer[index].maintext.toString(), fontcolor: Colors.black, fontsize: 16)),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                child: Textwidget(text: exclusiveoffer[index].subtext.toString(), fontcolor: AppColors.subtext, fontsize: 14)),
                            Row(
                              children: [
                                Textwidget(text: exclusiveoffer[index].pricetext.toString(), fontcolor: Colors.black, fontsize: 18),
                                Spacer(),
                                Container(
                                  width: 45,
                                  height: 45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(17),
                                      color: AppColors.gmaincolor
                                  ),
                                  child: Center(child: IconButton(onPressed: (){}, icon: Icon(Icons.add))),
                                )
                              ],
                            ),
                           // Smalladdbutton()
                          ],
                        ),
                      ),
                    );
                  }),
            ),

              // Row(
              //   children: [
              //     Padding(
              //         padding: EdgeInsets.symmetric(horizontal: 17),
              //         child: Textwidget(text: 'Exclusive offer', fontcolor: Colors.black, fontsize: 24)),
              //     SizedBox(width: 100,),
              //     Textwidget(text: 'See All', fontcolor: AppColors.gmaincolor, fontsize: 16),
              //   ],
              // ),
            // SizedBox(height: 10,),
            // Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 17),
            //   child: SingleChildScrollView(
            //     scrollDirection:Axis.horizontal,
            //     child: Row(
            //       children:[
            //         InkWell(
            //           onTap:(){},
            //           child: Container(
            //           width: 150,
            //           height: 220,
            //           decoration: BoxDecoration(
            //             border: Border.all(color: Colors.grey.shade400),
            //             borderRadius: BorderRadius.circular(18),
            //           ),
            //           child: Column(
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: [
            //               Padding(
            //                   padding:EdgeInsets.symmetric(horizontal:20,vertical: 10),
            //                   child: Image.asset(AppImages.bananimg,)),
            //               Padding(
            //                   padding: EdgeInsets.symmetric(horizontal: 5),
            //                   child: Textwidget(text: "Organic Bananas", fontcolor: Colors.black, fontsize: 16)),
            //               Padding(
            //                   padding: EdgeInsets.symmetric(horizontal: 5),
            //                   child: Textwidget(text: '7pcs,priceg', fontcolor: AppColors.subtext, fontsize: 14)),
            //               Smalladdbutton()
            //             ],
            //           ),
            //                         ),
            //         ),
            //         SizedBox(width: 15,),
            //         InkWell(
            //           onTap: (){},
            //           child: Container(
            //             width: 150,
            //             height: 220,
            //             decoration: BoxDecoration(
            //               border: Border.all(color: Colors.grey.shade400),
            //               borderRadius: BorderRadius.circular(18),
            //             ),
            //             child: SingleChildScrollView(
            //               child: Column(
            //                 crossAxisAlignment: CrossAxisAlignment.start,
            //                 children: [
            //                   Padding(
            //                       padding:EdgeInsets.symmetric(horizontal:20,vertical: 10),
            //                       child: Image.asset(AppImages.appleimg,)),
            //                   SizedBox(height: 17,),
            //                   Padding(
            //                       padding: EdgeInsets.symmetric(horizontal: 5),
            //                       child: Textwidget(text: "Red Apples", fontcolor: Colors.black, fontsize: 16)),
            //                   Padding(
            //                       padding: EdgeInsets.symmetric(horizontal: 5),
            //                       child: Textwidget(text: '1kg,priceg', fontcolor: AppColors.subtext, fontsize: 14)),
            //               Smalladdbutton(),
            //                 ],
            //               ),
            //             ),
            //           ),
            //         ),
            //         SizedBox(width: 15,),
            //         InkWell(
            //           onTap:(){},
            //           child: Container(
            //             width: 150,
            //             height: 220,
            //             decoration: BoxDecoration(
            //               border: Border.all(color: Colors.grey.shade400),
            //               borderRadius: BorderRadius.circular(18),
            //             ),
            //             child: Column(
            //               crossAxisAlignment: CrossAxisAlignment.start,
            //               children: [
            //                 Padding(
            //                     padding:EdgeInsets.symmetric(horizontal:20,vertical: 10),
            //                     child: Image.asset(AppImages.bananimg,)),
            //                 Padding(
            //                     padding: EdgeInsets.symmetric(horizontal: 5),
            //                     child: Textwidget(text: "Organic Bananas", fontcolor: Colors.black, fontsize: 16)),
            //                 Padding(
            //                     padding: EdgeInsets.symmetric(horizontal: 5),
            //                     child: Textwidget(text: '7pcs,priceg', fontcolor: AppColors.subtext, fontsize: 14)),
            //              Smalladdbutton(),
            //               ],
            //             ),
            //           ),
            //         ),
            //         SizedBox(width: 15,),
            //         InkWell(
            //           onTap: (){},
            //           child: Container(
            //             width: 150,
            //             height: 220,
            //             decoration: BoxDecoration(
            //               border: Border.all(color: Colors.grey.shade400),
            //               borderRadius: BorderRadius.circular(18),
            //             ),
            //             child: SingleChildScrollView(
            //               child: Column(
            //                 crossAxisAlignment: CrossAxisAlignment.start,
            //                 children: [
            //                   Padding(
            //                       padding:EdgeInsets.symmetric(horizontal:20,vertical: 10),
            //                       child: Image.asset(AppImages.appleimg,)),
            //                   SizedBox(height: 17,),
            //                   Padding(
            //                       padding: EdgeInsets.symmetric(horizontal: 5),
            //                       child: Textwidget(text: "Red Apples", fontcolor: Colors.black, fontsize: 16)),
            //                   Padding(
            //                       padding: EdgeInsets.symmetric(horizontal: 5),
            //                       child: Textwidget(text: '1kg,priceg', fontcolor: AppColors.subtext, fontsize: 14)),
            //               Smalladdbutton(),
            //                 ],
            //               ),
            //             ),
            //           ),
            //         ),],), ),),
                //--------------------------------Exclusive offer ends---------------------------------//
           SizedBox(height: 20,),
            Row(
              children: [
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 17),
                    child: Textwidget(text: 'Best Selling', fontcolor: Colors.black, fontsize: 24)),
                SizedBox(width: 130,),
                Textwidget(text: 'See All', fontcolor: AppColors.gmaincolor, fontsize: 16),
              ],
            ),
            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 17),
              child: SingleChildScrollView(
                scrollDirection:Axis.horizontal,
                child: Row(
                  children:[
                    InkWell(
                      onTap:(){},
                      child: Container(
                        width: 150,
                        height: 220,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding:EdgeInsets.symmetric(horizontal:20,vertical: 10),
                                child: Image.asset(AppImages.tomato,)),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                child: Textwidget(text: "Tomatoes", fontcolor: Colors.black, fontsize: 16)),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                child: Textwidget(text: '7pcs,priceg', fontcolor: AppColors.subtext, fontsize: 14)),
                         Smalladdbutton()
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 15,),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        width: 150,
                        height: 220,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding:EdgeInsets.symmetric(horizontal:20,vertical: 10),
                                  child: Image.asset(AppImages.nothing,)),
                              SizedBox(height: 10,),
                              Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 5),
                                  child: Textwidget(text: "Favourite", fontcolor: Colors.black, fontsize: 16)),
                              Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 5),
                                  child: Textwidget(text: '1kg,priceg', fontcolor: AppColors.subtext, fontsize: 14)),
                           Smalladdbutton() ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 15,),
                    InkWell(
                      onTap:(){},
                      child: Container(
                        width: 150,
                        height: 220,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding:EdgeInsets.symmetric(horizontal:20,vertical: 10),
                                child: Image.asset(AppImages.tomato,)),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                child: Textwidget(text: "Tomatoes", fontcolor: Colors.black, fontsize: 16)),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                child: Textwidget(text: '7pcs,priceg', fontcolor: AppColors.subtext, fontsize: 14)),
                            Smalladdbutton() ],
                        ),
                      ),
                    ),
                    SizedBox(width: 15,),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        width: 150,
                        height: 220,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding:EdgeInsets.symmetric(horizontal:20,vertical: 10),
                                  child: Image.asset(AppImages.nothing,)),
                              SizedBox(height: 10,),
                              Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 5),
                                  child: Textwidget(text: "Favourite", fontcolor: Colors.black, fontsize: 16)),
                              Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 5),
                                  child: Textwidget(text: '1kg,priceg', fontcolor: AppColors.subtext, fontsize: 14)),
                              Smalladdbutton() ],
                          ),
                        ),
                      ),
                    ),
                   ],), ),),
            //----------------------------------Best selling----------------------------------------------//

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
            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 17),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    InkWell(
                      onTap: (){},
                      child: Container(
                        width: 240,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.orange.shade100
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 15,),
                            Image.asset(AppImages.pulses),
                            SizedBox(width: 15,),
                            Textwidget(text: 'Pulses', fontcolor: Colors.black, fontsize: 18),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 15,),
                   InkWell(
                      onTap: (){},
                      child: Container(
                        width: 240,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: Colors.green.shade100
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 15,),
                            Image.asset(AppImages.rice),
                            SizedBox(width: 15,),
                            Textwidget(text: 'Rice', fontcolor: Colors.black, fontsize: 18)
                          ],
                        ),
                      ),
                    ),],),),),
            //------------------------------------Groceries-------------------------------------------//

            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 17),
              child: SingleChildScrollView(
                scrollDirection:Axis.horizontal,
                child: Row(
                  children:[
                    InkWell(
                      onTap:(){},
                      child: Container(
                        width: 150,
                        height: 220,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding:EdgeInsets.symmetric(horizontal:20,vertical: 10),
                                child: Image.asset(AppImages.meat,)),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                child: Textwidget(text: "Fresh meat", fontcolor: Colors.black, fontsize: 16)),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                child: Textwidget(text: '7kg,priceg', fontcolor: AppColors.subtext, fontsize: 14)),
                            Smalladdbutton() ],
                        ),
                      ),
                    ),
                    SizedBox(width: 15,),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        width: 150,
                        height: 220,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding:EdgeInsets.symmetric(horizontal:20,vertical: 10),
                                child: Image.asset(AppImages.chicken,)),
                            SizedBox(height: 10,),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                child: Textwidget(text: "Chicken", fontcolor: Colors.black, fontsize: 16)),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                child: Textwidget(text: '1kg,priceg', fontcolor: AppColors.subtext, fontsize: 14)),
                            Smalladdbutton() ],
                        ),
                      ),
                    ),
                    SizedBox(width: 15,),
                    InkWell(
                      onTap:(){},
                      child: Container(
                        width: 150,
                        height: 220,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding:EdgeInsets.symmetric(horizontal:20,vertical: 10),
                                child: Image.asset(AppImages.meat,)),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                child: Textwidget(text: "Fresh meat", fontcolor: Colors.black, fontsize: 16)),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                child: Textwidget(text: '7pcs,priceg', fontcolor: AppColors.subtext, fontsize: 14)),
                            Smalladdbutton() ],
                        ),
                      ),
                    ),
                    SizedBox(width: 15,),
                    InkWell (
                      onTap: (){},
                      child: Container(
                        width: 150,
                        height: 220,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding:EdgeInsets.symmetric(horizontal:20,vertical: 10),
                                child: Image.asset(AppImages.chicken,)),
                            SizedBox(height: 10,),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                child: Textwidget(text: "Chicken", fontcolor: Colors.black, fontsize: 16)),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                child: Textwidget(text: '1kg,priceg', fontcolor: AppColors.subtext, fontsize: 14)),
                            Smalladdbutton() ],
                        ),
                      ),
                    ),
                  ],), ),),

          ],
        ),
      ),
    );
  }
}
