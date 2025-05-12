import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  TextEditingController controller;
 String hinytext;
 Widget icon;
  TextFieldWidget({super.key, required this.controller,required this.icon, required this.hinytext});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 51,
      width: MediaQuery.of(context).size.width*0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey.shade300,
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hinytext,
            border: InputBorder.none,
          prefixIcon: icon,
        ),
      ),
    );
  }
}
