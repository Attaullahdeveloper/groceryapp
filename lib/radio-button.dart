import 'package:flutter/material.dart';
import 'package:grocreyapp/controlelr/constants/appColors/appcolors.dart';

class RadioClass extends StatefulWidget {
  const RadioClass({super.key});

  @override
  State<RadioClass> createState() => _RadioClassState();
}

class _RadioClassState extends State<RadioClass> {
  String groupValue='fe-male';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children:[
          Row(
            children: [
              Radio(
                  value: 'male',
                  groupValue: groupValue,//male
                  onChanged: (value){
                    groupValue=value.toString();
                    setState(() {
              
                    });
                  }),
              Text('Male')
            ],
          ),
          
          Row(
            children: [
              Radio(
                activeColor: AppColors.gmaincolor,

                  value: 'fe-male',
                  groupValue: groupValue,
                  onChanged: (value){
                    groupValue=value.toString();
                    setState(() {
              
                    });
                  }),
              Text('Fe-Male')
            ],
          ),
          Radio(
              value: 'others',
              groupValue: groupValue,
              onChanged: (value){
                groupValue=value.toString();
                setState(() {

                });
              }),
        ]
      )
    );
  }
}
