import 'package:flutter/material.dart';
import 'package:grocreyapp/controlelr/constants/appAssets/appicons.dart';
import 'package:grocreyapp/controlelr/widgets/text-widget.dart';

import '../../../controlelr/constants/appColors/appcolors.dart';

class AccountView extends StatefulWidget {
  const AccountView({super.key});

  @override
  State<AccountView> createState() => _AccountViewState();
}

class _AccountViewState extends State<AccountView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40,),
            ListTile(
              leading: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.black,
              ),
              title: Textwidget(text: 'Ayan Khan', fontcolor: Colors.black, fontsize: 20),
              subtitle: Textwidget(text: 'ayankhan@gmail.com', fontcolor:AppColors.subtext, fontsize: 16),
            ),
            SizedBox(height: 20,),
            Divider(),
            SizedBox(height: 10,),
            Row(
              children: [
          SizedBox(width: 25,),
                Icon(Icons.receipt_outlined),
                SizedBox(width: 10,),
                Textwidget(text: 'Order', fontcolor: Colors.black, fontsize: 18),
                Spacer(),
                ImageIcon(AssetImage(AppIcons.apprightarrow)),
              ],
            ),
            SizedBox(height: 10,),
            Divider(),
            //-----------------------------------------------2
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 25,),
                Icon(Icons.account_circle_outlined),
                SizedBox(width: 10,),
                Textwidget(text: 'My detail', fontcolor: Colors.black, fontsize: 18),
                Spacer(),
                ImageIcon(AssetImage(AppIcons.apprightarrow)),
              ],
            ),
            SizedBox(height: 10,),
            Divider(),
            //----------------------------------------------3
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 25,),
                Icon(Icons.location_on_outlined),
                SizedBox(width: 10,),
                Textwidget(text: 'Delivery address', fontcolor: Colors.black, fontsize: 18),
                Spacer(),
                ImageIcon(AssetImage(AppIcons.apprightarrow)),
              ],
            ),
            SizedBox(height: 10,),
            Divider(),
            //---------------------------------------------------4
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 25,),
                Icon(Icons.credit_card_outlined),
                SizedBox(width: 10,),
                Textwidget(text: 'Payment Method', fontcolor: Colors.black, fontsize: 18),
                Spacer(),
                ImageIcon(AssetImage(AppIcons.apprightarrow)),
              ],
            ),
            SizedBox(height: 10,),
            Divider(),
            //---------------------------------------------------5
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 25,),
                Icon(Icons.local_offer_outlined),
                SizedBox(width: 10,),
                Textwidget(text: 'Promo Cord', fontcolor: Colors.black, fontsize: 18),
                Spacer(),
                ImageIcon(AssetImage(AppIcons.apprightarrow)),
              ],
            ),
            SizedBox(height: 10,),
            Divider(),
            //--------------------------------------------6
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 25,),
                Icon(Icons.notifications_outlined),
                SizedBox(width: 10,),
                Textwidget(text: 'Notification', fontcolor: Colors.black, fontsize: 18),
                Spacer(),
                ImageIcon(AssetImage(AppIcons.apprightarrow)),
              ],
            ),
            SizedBox(height: 10,),
            Divider(),
            //---------------------------------------7
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 25,),
                Icon(Icons.help_outline),
                SizedBox(width: 10,),
                Textwidget(text: 'Help', fontcolor: Colors.black, fontsize: 18),
                Spacer(),
                ImageIcon(AssetImage(AppIcons.apprightarrow)),
              ],
            ),
            SizedBox(height: 10,),
            Divider(),
            //----------------------------------------8
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 25,),
                Icon(Icons.info_outline),
                SizedBox(width: 10,),
                Textwidget(text: 'About', fontcolor: Colors.black, fontsize: 18),
                Spacer(),
                ImageIcon(AssetImage(AppIcons.apprightarrow)),
              ],
            ),
            SizedBox(height: 10,),
            Divider(),
        SizedBox(height: 10,),
        GestureDetector(
          onTap: (){},
          child: Container(
            height: 55,
            width: 320,
            decoration: BoxDecoration(
                color: Color(0xffF2F3F2),
                borderRadius: BorderRadius.circular(19)
            ),
            child: Row(
              children: [
                SizedBox(width: 20,),
                Icon(Icons.logout,color: AppColors.gmaincolor),
                SizedBox(width: 80,),
                Textwidget(text: 'Log out', fontcolor:AppColors.gmaincolor, fontsize: 18),
              ],
            )))
          ],
            ),
      )
    );
  }
}
