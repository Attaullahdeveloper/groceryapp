import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:grocreyapp/controlelr/constants/appColors/appcolors.dart';
import 'package:grocreyapp/controlelr/widgets/text-widget.dart';
class Newproductdetail extends StatefulWidget {
  String image;
  String maintext;
  String subtext;
  String pricetext;

  Newproductdetail({super.key,required this.maintext,required this.subtext, required this.image,required this.pricetext});

  @override
  
  State<Newproductdetail> createState() => _NewproductdetailState();
}

class _NewproductdetailState extends State<Newproductdetail> {
  bool favourite=true;// for favourite button colors---------------
  // here we will make a variable for the price
  double price=0;
  int value=1;//by default value in our figme desgin is 1--------
  // here we give the value of textprice to the price parameter varaible bcs in parameter variabe we cantnot give direct its value---
  double price1=0;
  // here we make this variable bcs we want that during increament the 4.99 value is continuesly added to the price text so for that------
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    price=double.parse(widget.pricetext);
    price1=double.parse(widget.pricetext);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // for the large imgae-------------------------
            Container(
              width: 413,
              height: 371,
              decoration: BoxDecoration(
               gradient: LinearGradient(
                 begin: Alignment.topCenter,
                 end: Alignment.bottomCenter,
                 colors: [
                   Color(0xFFF7F8F7), // Slightly lighter shade at the top
                   Color(0xFFF2F3F2), // Base color in the middle
                   Color(0xFFEDEEEE), // Slightly darker shade at the bottom
                 ]),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(25),
                  bottomLeft: Radius.circular(25),
                )
              ),
              child: Center(
                child: SizedBox(
                  height: 199,width: 329,
                    child: Image.asset(widget.image,fit: BoxFit.contain,)),// the image that we parametrize-------
              ),
            ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Row(children: [

              Textwidget(text: (widget.maintext), fontcolor: Colors.black, fontsize: 24),
            Spacer(),
            IconButton(onPressed: (){
              if(favourite==true)
              {
                favourite=false
                ;
              }
              else
                {
                  favourite=true;
                }
              setState(() {

              });
            }, icon: favourite?Icon(Icons.favorite_border_outlined,):Icon(Icons.favorite,color: Colors.red,)
            ),
            ],),
          ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 20,),
                child: Textwidget(text: (widget.subtext), fontcolor: AppColors.subtext, fontsize: 16)),
            // the increament and decreament button starts from here----------------------------------
            Row(
              children: [
                IconButton(onPressed: (){
                  print('-------------------decrement-1');


                     // Get.snackbar('Error', 'Minimum one number must be selected',
                     //   backgroundColor: Colors.white,
                     //   icon: Icon(Icons.error)
                     // );
                  if(value>1) {
                    value--;
                    price = price - price1;
                    setState(() {});
                  }}, icon: Icon(Icons.remove)),
                Container(
                  width: 45,
                  height: 45,
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
                  // for increasing the price--------
                  price=price1+price;
                  // the price1 play a special role for example
                  // nwhen we click on the inclreaent on first time then the value bacome 9.98 something then when we click for the next time then
                  // price varaible have value 9.98 but the price1 variable have still the value 4.99 and the 4.99 will add agian---------
                  setState(() {

                  });
                }, icon: Icon(Icons.add)),
                Spacer(),
                Textwidget(text: '\$${price.toStringAsFixed(2)}', fontcolor: Colors.black, fontsize: 18),],),
           SizedBox(height: 20,),
            Divider(
              color: Colors.grey.shade500,
              endIndent: 20,
              indent: 20,
            ),
            SizedBox(width: 10,),
            Row(
                children: [
                  SizedBox(width: 20,),
                  Textwidget(text: 'Product Detail', fontcolor: Colors.black, fontsize: 16),
                ]),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Textwidget(text: 'Apples are Nutritious and may be good for weightless.'
                  'Apples may be good for your health.As part of your healthful'
                  'and for your diet', fontcolor: AppColors.subtext, fontsize: 13),
            ),
            SizedBox(height: 10,),
            Divider(
              color: Colors.grey.shade500,
              endIndent: 20,
              indent: 20,
            ),

          ],
        ),
    );
  }
}
