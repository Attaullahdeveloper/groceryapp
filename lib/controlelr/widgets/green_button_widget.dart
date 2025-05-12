import 'package:flutter/material.dart';
import 'package:grocreyapp/controlelr/constants/appColors/appcolors.dart';
import 'package:grocreyapp/controlelr/widgets/text-widget.dart';


class GreenBUttonWidget extends StatelessWidget {
  String text;
  VoidCallback onpress;
   GreenBUttonWidget({super.key, required this.text, required this.onpress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        height: 60,
        width: 330,
        decoration: BoxDecoration(
          color: AppColors.gmaincolor,
          borderRadius: BorderRadius.circular(19)
        ),
        child: Center(child: Textwidget(text: text, fontcolor:Colors.white, fontsize: 18),),
      ),
    );
  }
}
