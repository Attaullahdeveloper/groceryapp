import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:grocreyapp/controlelr/constants/appAssets/appimages.dart';
import 'package:grocreyapp/controlelr/widgets/green_button_widget.dart';
import 'package:grocreyapp/controlelr/widgets/text-widget.dart';
import 'package:grocreyapp/models/shop_model_class/shop-model.dart';
import 'package:grocreyapp/views/home_views/Favourite_veiw/_confirmation_screen/Confirmaiton_screen.dart';

import '../../../controlelr/constants/appColors/appcolors.dart';
class CartView extends StatefulWidget {

  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  int value=1;
  double price=0;
  double price1=4.99;
 // double pricetext=4.99;

  List<ShopModel> cartlist=[
    ShopModel(subtext: '1kg, Price', image: AppImages.tomato, maintext: 'Red Tomatoes', pricetext: '4.99'),
    ShopModel(subtext: '2 dozen, Price', image: AppImages.bananimg, maintext: 'Organic Bananas', pricetext: '4.99'),
    ShopModel(subtext: '1kg,Price', image: AppImages.nothing, maintext: 'Ginger', pricetext: '4.99'),
    ShopModel(subtext: '1kg ,Price', image: AppImages.appleimg, maintext: 'Red Apples', pricetext: '4.99'),
    ShopModel(subtext: '5kg ,Price', image: AppImages.meat, maintext: 'Meat', pricetext: '4.99'),
    ShopModel(subtext: '2kg ,Price', image: AppImages.chicken, maintext: 'Chicken', pricetext: '4.99'),
    ShopModel(subtext: '1kg ,Price', image: AppImages.explore2, maintext: 'Ghee', pricetext: '4.99'),
    ShopModel(subtext: '7pcs, Price', image: AppImages.bananimg, maintext: 'Bananas', pricetext: '4.99'),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // price1=double.parse(widget.pricetext);
    // price=double.parse(widget.pricetext);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
             title: Padding(
                 padding: EdgeInsets.symmetric(horizontal: 128),
                 child: Textwidget(text: 'My Cart', fontcolor: Colors.black, fontsize: 18)),
      ),
      body:
      Stack(
        children:[
          Column(
          children: [
            Divider(),
            Expanded(
              flex: 90,
              child:
            ListView.separated(
                itemCount: cartlist.length,
                itemBuilder: (context,index){
                  return ListTile(
                    leading:Image.asset(cartlist[index].image.toString()),
                    title: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(cartlist[index].maintext.toString(),style: TextStyle(fontWeight: FontWeight.bold),)),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding:EdgeInsets.symmetric(horizontal:10),
                            child: Text(cartlist[index].subtext.toString())
                        ),
                        // buttom for increamnent and decreamnet----------------------------
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            IconButton(onPressed: (){
                              value--;
                              price=price-price1;
                              setState(() {

                              });
                            }, icon: Icon(Icons.remove)),
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(17),
                                color: AppColors.gmaincolor,
                              ),
                              child: Center(
                                child: Text('$value'),
                              ),
                            ),
                            IconButton(onPressed: (){
                              value++;
                              price=price1+price;
                              setState(() {

                              });
                            }, icon: Icon(Icons.add)),
                            SizedBox(width: 20 ,),

                          ],
                        ),],),
                    trailing:Textwidget(text: '\$${price.toStringAsFixed(2)}', fontcolor: Colors.black, fontsize: 18)
                    ,
                    // trailing: Icon(Icons.close)
                  );

                }, separatorBuilder: (BuildContext context, int index) {
                  return Padding(
                      padding: EdgeInsets.all(15),
                      child: Divider());
            },),
            ),
            Expanded(
                flex: 10,
                child: GreenBUttonWidget(text: 'Go to Cash out', onpress: (){
                  showModalBottomSheet(
                      context: context,
                    //  backgroundColor: Color(0xffFAF3E0),
                     // isScrollControlled: true,
                    //  backgroundColor: Colors.transparent,

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          topLeft: Radius.circular(30),
                        )
                      ),

                      builder: (context){
                        return StatefulBuilder(
                            builder: (context,setState){
                              return Container(
                                height: MediaQuery.of(context).size.height * 0.9,
                                child: Expanded(child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(children: [
                                        SizedBox(width: 20,),
                                        Textwidget(text: 'Checkout', fontcolor: Colors.black, fontsize: 24),
                                        Spacer(),
                                        IconButton(onPressed: (){
                                          Get.defaultDialog(
                                            content: Column(
                                              children: [
                                             Image.asset(AppImages.comp4,width: 215,height: 215,),
                                                Textwidget(text: 'Oops! Order Failded', fontcolor: Colors.black, fontsize: 20),
                                                SizedBox(height: 10,),

                                                SizedBox(height: 10,),
                                                GreenBUttonWidget(text: 'Please try again', onpress:(){
                                                  Get.back();
                                                }),
                                                Textwidget(text: 'Back to home', fontcolor:AppColors.blackcolor, fontsize: 18)
                                              ],
                                            )
                                          );
                                        }, icon: Icon(Icons.close))
                                      ],),
                                    Padding(
                                      padding: EdgeInsets.all(15),
                                      child: Divider(
                                        color: Colors.grey.shade300,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(width: 20,),
                                        Textwidget(text: 'Delivery', fontcolor: AppColors.subtext, fontsize: 18),
                                        Spacer(),
                                        Textwidget(text: 'Select Method', fontcolor:Colors.black, fontsize: 16),
                                        Icon(Icons.chevron_right),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(15),
                                      child: Divider(
                                        color: Colors.grey.shade300,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(width: 20,),
                                        Textwidget(text: 'Prome Code', fontcolor: AppColors.subtext, fontsize: 18),
                                        Spacer(),
                                        Textwidget(text: 'Pick discount', fontcolor:Colors.black, fontsize: 16),
                                        Icon(Icons.chevron_right),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(15),
                                      child: Divider(
                                        color: Colors.grey.shade300,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(width: 20,),
                                        Textwidget(text: 'Total Cost', fontcolor: AppColors.subtext, fontsize: 18),
                                        Spacer(),
                                        Textwidget(text: '\$13.97', fontcolor:Colors.black, fontsize: 16),
                                        Icon(Icons.chevron_right),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(15),
                                      child: Divider(
                                        color: Colors.grey.shade300,
                                      ),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 20),
                                        child: Textwidget(text:'By placing an order you agree to our ', fontcolor: AppColors.subtext, fontsize: 14)),
                                    Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 20),
                                        child: Row(
                                          children: [
                                            Textwidget(text:'Terms ', fontcolor: Colors.black, fontsize: 14),
                                            Textwidget(text:'& ', fontcolor: AppColors.subtext, fontsize: 14),
                                            Textwidget(text:'Conditions ', fontcolor: Colors.black, fontsize: 14),

                                          ],
                                        )),
                                    SizedBox(height: 4,),
                                    Align(
                                        alignment: Alignment.center,
                                        child: GreenBUttonWidget(text: 'Place Order', onpress:(){
                                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Confirmationscreen()));
                                        }))
                                  ],
                                )),
                              );
                            });
                      });
                })),
            SizedBox(height: 20,)

          ],

        ),
          Spacer(),

    ],
      )
    ,

    );
  }
}
