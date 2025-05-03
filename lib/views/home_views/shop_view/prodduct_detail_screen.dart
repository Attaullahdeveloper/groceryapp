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

          ],
        ),
    );
  }
}
