import 'package:flutter/material.dart';
import 'package:grocreyapp/controlelr/constants/appAssets/appicons.dart';
import 'package:grocreyapp/controlelr/widgets/text-field-widget.dart';
import 'package:grocreyapp/controlelr/widgets/text-widget.dart';
class ExploreView extends StatefulWidget {
  const ExploreView({super.key});

  @override
  State<ExploreView> createState() => _ExploreViewState();
}

class _ExploreViewState extends State<ExploreView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:   Column(
        children: [
          SizedBox(height: 40,),
          Textwidget(text: 'Find Prduct', fontcolor: Colors.black, fontsize: 20),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Align(

                alignment: Alignment.center,
                child: TextFieldWidget(controller: TextEditingController(), icon: ImageIcon(AssetImage(AppIcons.searchicon)), hinytext:'Serach here',)),
          )

        ],
      ),
    );

  }
}
