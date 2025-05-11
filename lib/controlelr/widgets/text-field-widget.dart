import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  TextEditingController controller;
 String hinytext;
 Widget icon;
  TextFieldWidget({super.key, required this.controller,required this.icon, required this.hinytext});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all()
      ),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hinytext,
          prefixIcon: icon
        ),
      ),
    );
  }
}
