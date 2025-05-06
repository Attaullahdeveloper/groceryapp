import 'package:flutter/material.dart';
import 'package:grocreyapp/views/home_views/Cart_view/Cart_view.dart';
import 'package:grocreyapp/views/home_views/Favourite_veiw/Favourite_view.dart';
import 'package:grocreyapp/views/home_views/account_view/account_view.dart';
import 'package:grocreyapp/views/home_views/explore_view/explore_view.dart';
import 'package:grocreyapp/views/home_views/new_shop_screen/new_shop_screen.dart';

import '../../controlelr/constants/appColors/appcolors.dart';
class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int selectedindex=0;
 final List pages=[
    Newshopscreen(),
    ExploreView(),
    CartView(),
    FavouriteView(),
    AccountView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: pages.elementAt(selectedindex),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.gmaincolor,
        unselectedItemColor: AppColors.blackcolor,
        currentIndex: selectedindex,
        onTap: (index){
          selectedindex=index;
          setState(() {

          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label:'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.no_accounts),
            label: 'Account',
          )

        ],
      ),
    );
  }
}

