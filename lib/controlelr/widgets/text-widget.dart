import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Textwidget extends StatelessWidget {
  String text;
  double fontsize;
  Color fontcolor;
   Textwidget({super.key,required this.text,required this.fontcolor,required this.fontsize});

  @override
  Widget build(BuildContext context) {
    return Text(text,style: GoogleFonts.questrial(
      fontWeight: FontWeight.bold,
      fontSize: fontsize,
      color: fontcolor,
    ),);
  }
}

