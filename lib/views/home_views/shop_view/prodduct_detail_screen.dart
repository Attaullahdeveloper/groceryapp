import 'package:flutter/material.dart';
class Productdetailscreen extends StatefulWidget {
  String image;
  String maintext;
  String pricetext;
  String desription;
   Productdetailscreen({super.key,required this.image,required this.maintext, required this.pricetext, required this.desription});

  @override
  State<Productdetailscreen> createState() => _ProductdetailscreenState();
}

class _ProductdetailscreenState extends State<Productdetailscreen> {
  double price= 0;
  double price1= 0;
  int value=1;
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
          children: [
          Container(
            width: double.infinity,
            height: 371,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),

            ),
          ),
            child: Center(child: Image(image: AssetImage(widget.image)),),
          ),
            Text(widget.maintext),
            Text(widget.pricetext),
            Text(widget.desription),
            Row(children: [
              IconButton(onPressed: (){
                value--;
                price=price-price1;

                setState(() {

                });
              }, icon: Icon(Icons.remove)),
              Container(
                child: Center(child: Text('$value'),),
              ),
              IconButton(onPressed: (){
                value++;
                price=price1+price;
                setState(() {

                });
              }, icon: Icon(Icons.add)),
              Spacer(),
              Text('$price')
            ],)

          ],
        ),
    );
  }
}
