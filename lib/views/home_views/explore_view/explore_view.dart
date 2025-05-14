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
   final List<Color> containercolor=[
     Color('value'),//list for colors.----------------------------------
   ];
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
          ),
                   Expanded(
                     child: Padding(
                       padding: EdgeInsets.symmetric(horizontal: 16),
                       child: GridView.builder(
                           gridDelegate: (SliverGridDelegateWithFixedCrossAxisCount(
                             crossAxisCount: 2,
                             crossAxisSpacing: 10,
                             childAspectRatio:0.8,
                             mainAxisSpacing: 20,
                           )),
                           itemCount: 12,
                           itemBuilder: (context,index){
                             return Container(
                               height: 150,
                               width: 174,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(18),
                                 color: Colors.black
                               ),
                             );
                           }),
                     ),
                   ),
        ],
      ),
    );

  }
}
