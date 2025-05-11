import 'package:flutter/material.dart';
import 'package:grocreyapp/controlelr/widgets/text-field-widget.dart';


class TextFieldClass extends StatefulWidget {
  const TextFieldClass({super.key});

  @override
  State<TextFieldClass> createState() => _TextFieldClassState();
}

class _TextFieldClassState extends State<TextFieldClass> {
  TextEditingController nameController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
TextFieldWidget(controller: nameController, icon: Icon(Icons.mail), hinytext: 'Enter email'),
TextFieldWidget(controller: passwordController, icon: Icon(Icons.lock), hinytext: 'Enter Password'),
      ],),
    );
  }
}
