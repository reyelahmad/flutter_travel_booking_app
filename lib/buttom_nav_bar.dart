import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:travel_booking/const/colors.dart';
import 'package:travel_booking/pages/HomePage.dart';

class BtNavBar extends StatefulWidget {
  const BtNavBar({Key? key}) : super(key: key);

  @override
  _BtNavBarState createState() => _BtNavBarState();
}

class _BtNavBarState extends State<BtNavBar> {
  int _selectIndex = 0;

  static List<Widget> _widgetOption = <Widget>[
    HomePage(),
    Text("Home2"),
    Text("Home3"),
    Text("Home4"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOption.elementAt(_selectIndex),
      ),
      bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: Colors.black.withOpacity(.1),
              )
            ],
          ),
          child: SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
              child: GNav(
                rippleColor: AppColors.blue,
                hoverColor: AppColors.ofwhite,
                gap: 10,
                activeColor: AppColors.blue,
                iconSize: 25,
                padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                duration: Duration(milliseconds: 400),
                tabBackgroundColor: AppColors.ofwhite,
                color: AppColors.blue,
                tabs: const [
                  GButton(
                    icon: Icons.home,
                    text: 'Home',
                  ),
                  GButton(
                    icon: Icons.search,
                    text: 'Search',
                  ),
                  GButton(
                    icon: Icons.favorite,
                    text: 'Favorite',
                  ),
                  GButton(
                    icon: Icons.person,
                    text: 'Profile',
                  ),
                ],
                selectedIndex: _selectIndex,
                onTabChange: (index) {
                  setState(() {
                    _selectIndex = index;
                  });
                },
              ),
            ),
          )),
    );
  }
}
