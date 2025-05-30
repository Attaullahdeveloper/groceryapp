import 'package:flutter/material.dart';
import 'package:grocreyapp/controlelr/constants/appAssets/appicons.dart';
import 'package:grocreyapp/controlelr/constants/appAssets/appimages.dart';

import 'package:grocreyapp/controlelr/widgets/text-field-widget.dart';
import 'package:grocreyapp/controlelr/widgets/text-widget.dart';

import 'package:grocreyapp/models/shop_model_class/shop-model.dart';
import 'package:grocreyapp/views/home_views/new_shop_screen/ShopPro_detail.dart';
class ExploreView extends StatefulWidget {
  const ExploreView({super.key});

  @override
  State<ExploreView> createState() => _ExploreViewState();
}

class _ExploreViewState extends State<ExploreView> {
  @override
  Widget build(BuildContext context) {
    List<Color> containercolor=[
     Color(0xff53B175B2),//list for colors.----------------------------------
     Color(0xff53B1751A),
     Color(0xffF7A593),
     Color(0xffD3B0E0),
     Color(0xffFDE598),
     Color(0xffB7DFF5),
     Color(0xff53B175B2),
     Color(0xff53B1751A),
     Color(0xffF7A593),
     Color(0xffD3B0E0),
     Color(0xffFDE598),
     Color(0xffB7DFF5),
   ];//for colors-------------
    List<ShopModel> containerdata=[
          ShopModel(subtext: 'abd', image: AppImages.explore1, maintext: 'Fresh fruits', pricetext: '12'),
          ShopModel(subtext: 'abc', image: AppImages.explore2, maintext: 'Coking oil', pricetext: '12'),
          ShopModel(subtext: 'abs', image: AppImages.explore3, maintext: 'Meat and fishes', pricetext: '23'),
          ShopModel(subtext: 'aaa', image: AppImages.explore4, maintext: 'Bakery and Snacks', pricetext: '12'),
          ShopModel(subtext: 'aaa', image: AppImages.explore5, maintext: 'Dairy and eggs', pricetext: '12'),
          ShopModel(subtext: 'aaa', image: AppImages.explore6, maintext: 'Beverages', pricetext: '12'),
      ShopModel(subtext: 'aaa', image: AppImages.explore1, maintext: 'Fresh fruits', pricetext: '12'),
      ShopModel(subtext: 'aaa', image: AppImages.explore2, maintext: 'Coking oil', pricetext: '12'),
      ShopModel(subtext: 'aaa', image: AppImages.explore3, maintext: 'Meat and fishes', pricetext: '12'),
      ShopModel(subtext: 'aaa', image: AppImages.explore4, maintext: 'Bakery and Snacks', pricetext: '12'),
      ShopModel(subtext: 'aaa', image: AppImages.explore5, maintext: 'Dairy and eggs', pricetext: '12'),
      ShopModel(subtext: 'aaa', image: AppImages.explore6, maintext: 'Beverages', pricetext: '12'),

   ];// for pictures------------

    return Scaffold(
      body:   Column(
        children: [
          SizedBox(height: 40,),
          Textwidget(text: 'Find Prduct', fontcolor: Colors.black, fontsize: 20),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Align(

                alignment: Alignment.center,
                child: TextFieldWidget(controller: TextEditingController(), icon: ImageIcon(AssetImage(AppIcons.searchicon)), hinytext:'Serach here',)),
          ),
                   Expanded(
                     child: Padding(
                       padding: EdgeInsets.symmetric(horizontal: 16),
                       child: GridView.builder(
                           gridDelegate: (SliverGridDelegateWithFixedCrossAxisCount(
                             crossAxisCount: 2,
                             crossAxisSpacing: 10,
                             childAspectRatio:0.8,
                             mainAxisSpacing: 20,
                           )),
                           itemCount: 12,
                           itemBuilder: (context,index){
                             return InkWell(
                               onTap: (){
                                 Navigator.push(context, MaterialPageRoute(builder: (context)=>Newproductdetail(
                                     maintext: containerdata[index].maintext.toString(),
                                     subtext: containerdata[index].subtext.toString(),
                                     image: containerdata[index].image.toString(),
                                     pricetext: containerdata[index].pricetext.toString())));
                                 },
                               child: Container(

                                 height: 150,
                                 width: 174,
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(18),
                                 //  border: Border.all(),
                                   color: containercolor[index],
                                 ),
                                 child: Padding(
                                   padding: EdgeInsets.symmetric(vertical: 25),
                                   child: Column(
                                     children: [
                                       Image.asset(containerdata[index].image.toString()),
                                       SizedBox(height: 30,),
                                       Textwidget(text: containerdata[index].maintext.toString(), fontcolor: Colors.black, fontsize: 16)
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
    );

  }
}
