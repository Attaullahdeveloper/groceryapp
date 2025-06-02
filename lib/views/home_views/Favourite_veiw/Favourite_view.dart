import 'package:flutter/material.dart';
import 'package:grocreyapp/controlelr/constants/appAssets/appicons.dart';
import 'package:grocreyapp/controlelr/constants/appAssets/appimages.dart';
import 'package:grocreyapp/controlelr/widgets/green_button_widget.dart';
import 'package:grocreyapp/models/shop_model_class/shop-model.dart';

import '../../../controlelr/widgets/text-widget.dart';
class FavouriteView extends StatefulWidget {
  const FavouriteView({super.key});

  @override
  State<FavouriteView> createState() => _FavouriteViewState();
}

class _FavouriteViewState extends State<FavouriteView> {
  List<ShopModel> favlist=[
    ShopModel(subtext: '325ml,Price', image: AppImages.seeall1, maintext: 'Diet Coke', pricetext: '4.99'),
    ShopModel(subtext: '325ml,Price', image: AppImages.seeall2, maintext: 'Sprite Cane', pricetext: '4.99'),
    ShopModel(subtext: '325ml,Price', image: AppImages.seeall3, maintext: 'Apple & Grapes', pricetext: '4.99'),
    ShopModel(subtext: '325ml,Price', image: AppImages.seeall4, maintext: 'Orange Juice', pricetext: '4.99'),
    ShopModel(subtext: '325ml,Price', image: AppImages.seeall5, maintext: 'Coca Cola', pricetext: '4.99'),
    ShopModel(subtext: '325ml,Price', image: AppImages.seeall6, maintext: 'Pepsi Cane', pricetext: '4.99'),
    ShopModel(subtext: '325ml,Price', image: AppImages.seeall5, maintext: 'Coca Cola', pricetext: '4.99'),
    ShopModel(subtext: '325ml,Price', image: AppImages.seeall6, maintext: 'Pepsi Cane', pricetext: '4.99'),

  ];
  double price=1.59;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
            padding: EdgeInsets.symmetric(horizontal: 128),
            child: Textwidget(text: 'My Cart', fontcolor: Colors.black, fontsize: 18)),
      ),
      body: Stack(
        children:[ Column(
          children: [
            Divider(),
            Expanded(
                flex: 90,
                child: ListView.separated(
                itemCount: favlist.length,
                itemBuilder: (context,index){
                  return ListTile(
                    leading: Image.asset(favlist[index].image.toString(),
                    width: 25,
                    height: 44,),
                    title: Text(favlist[index].maintext.toString(),style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: Text(favlist[index].subtext.toString()),
                      trailing:Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Textwidget(text: '\$${price.toStringAsFixed(2)}', fontcolor: Colors.black, fontsize: 18),
                          SizedBox(width: 5,),
                          Icon(Icons.chevron_right)
                        ],
                      )



                  );
                }, separatorBuilder: (BuildContext context, int index) {
                  return Padding(
                      padding: EdgeInsets.all(15),
                      child: Divider());
            },
            )),
            Expanded(
                flex: 10,
                child: GreenBUttonWidget(text: 'Add all to Cart', onpress: (){})),
            SizedBox(height: 20,),
          ],
        ),
          Spacer(),
    ]
      ),
    );
  }
}
