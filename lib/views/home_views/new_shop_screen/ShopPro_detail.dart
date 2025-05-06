import 'package:flutter/material.dart';
import 'package:grocreyapp/controlelr/constants/appColors/appcolors.dart';
import 'package:grocreyapp/controlelr/widgets/text-widget.dart';
class Newproductdetail extends StatefulWidget {
  String image;
  String maintext;
  String subtext;

  Newproductdetail({super.key,required this.maintext,required this.subtext, required this.image});

  @override
  State<Newproductdetail> createState() => _NewproductdetailState();
}

class _NewproductdetailState extends State<Newproductdetail> {
  bool favourite=false;// for favourite button colors---------------
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
              if(favourite==false)
              {
                favourite=true;
              }
              else
                {
                  favourite=false;
                }
              setState(() {

              });
            }, icon: favourite?Icon(Icons.favorite,):Icon(Icons.favorite,color: Colors.red,)
            ),
            ],),
          ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 20,),
                child: Textwidget(text: (widget.subtext), fontcolor: AppColors.subtext, fontsize: 16))

          ],
        ),
    );
  }
}
