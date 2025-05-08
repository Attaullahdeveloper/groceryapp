import 'package:flutter/material.dart';

class CheckBoxClass extends StatefulWidget {
  const CheckBoxClass({super.key});

  @override
  State<CheckBoxClass> createState() => _CheckBoxClassState();
}

class _CheckBoxClassState extends State<CheckBoxClass> {
  bool option1=false;
  bool option2=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children:[
          Row(
            children: [
              Checkbox(
                value: option1,
                onChanged: ((value){
                  option1=value!;
                  setState(() {

                  });
                }),
              ),
              Text('Late Fine?')
            ],
          ),
          Row(
            children: [
              Checkbox(
                activeColor: Colors.red,
                checkColor: Colors.blue,
                value: option2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                 ),

                onChanged: ((value){
                  option2=value!;
                  setState(() {

                  });
                }),
              ),
              Text('New LAptop Fine?', style: TextStyle(
                color: option2?Colors.red:Colors.black
              ),)
            ],
          ),
        ]
      )
    );
  }
}
