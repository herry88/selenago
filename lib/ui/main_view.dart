import 'package:flutter/material.dart';
import 'package:selenago_test/helper/app_assets.dart';
import 'package:selenago_test/helper/app_colors.dart';
import 'package:selenago_test/ui/empty_view.dart';

import 'home_view.dart';

class MainView extends StatefulWidget {
  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {

  int _bnvCurrentIndex = 0;
  List<Widget> _screenList = [
    HomeView(),
    EmptyView(text: "Notifikasi"),
    EmptyView(text: "Post"),
    EmptyView(text: "Timeline"),
    EmptyView(text: "Pesanan"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: _screenList[_bnvCurrentIndex],
      bottomNavigationBar: _bottomNavigation(),
    );
  }

  Widget _bottomNavigation() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _bnvCurrentIndex,
      onTap: (index) {
        setState(() {
          _bnvCurrentIndex = index;
        });
      },
      backgroundColor: AppColors.alabaster,
      elevation: 8.0,
      selectedFontSize: 12.0,
      selectedItemColor: AppColors.yellowOrange,
      unselectedItemColor: AppColors.gray,
      items: [
        _bottomNavItem(
          "Home",
          getIcon("ic_home_gray.png"),
          getIcon("ic_home_orange.png"),
        ),
        _bottomNavItem(
          "Notifikasi",
          getIcon("ic_bell_gray.png"),
          getIcon("ic_bell_orange.png"),
        ),
        _bottomNavItem(
          "Post",
          getIcon("ic_plus_outline_gray.png"),
          getIcon("ic_plus_outline_orange.png"),
        ),
        _bottomNavItem(
          "Timeline",
          getIcon("ic_time_gray.png"),
          getIcon("ic_time_orange.png"),
        ),
        _bottomNavItem(
          "Pesanan",
          getIcon("ic_spreadsheet_gray.png"),
          getIcon("ic_spreadsheet_orange.png"),
        ),
      ],
    );
  }

  BottomNavigationBarItem _bottomNavItem(
    String title,
    String icon,
    String activeIcon,
  ) {
    return BottomNavigationBarItem(
      title: Text(title),
      icon: Container(
        margin: EdgeInsets.only(bottom: 5.0),
        child: Image.asset(icon, width: 20.0),
      ),
      activeIcon: Container(
        margin: EdgeInsets.only(bottom: 5.0),
        child: Image.asset(activeIcon, width: 20.0),
      ),
    );
  }
}