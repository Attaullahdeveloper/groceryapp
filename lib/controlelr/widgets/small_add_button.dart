import 'package:flutter/material.dart';
import 'package:grocreyapp/controlelr/constants/appColors/appcolors.dart';
import 'package:grocreyapp/controlelr/widgets/text-widget.dart';
class Smalladdbutton extends StatelessWidget {
  const Smalladdbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: EdgeInsets.symmetric(horizontal: 5,vertical: 12
      ),
      child: Container(
        width: 45,
        height: 45,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17),
            color: AppColors.gmaincolor
        ),
        child: Center(child: IconButton(onPressed: (){}, icon: Icon(Icons.add))),
      ),
    );
  }
}
