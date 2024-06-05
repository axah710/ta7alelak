import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:ta7alelak/helpers/constants.dart';
import 'package:ta7alelak/views/news_view.dart';
import 'package:ta7alelak/views/settings_view.dart';
import 'package:ta7alelak/views/user_view.dart';
import 'package:ta7alelak/widgets/home_view_body.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int selectedIndex = 0;
  final List screens = const [
    HomeViewBody(),
    NewsView(),
    UserView(),
    SettingsView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: SizedBox(
        height: 66,
        child: GNav(
          backgroundColor: kColor.withOpacity(0.57),
          activeColor: Colors.black.withOpacity(0.88),
          tabBackgroundColor: kColor.withOpacity(0.66),
          duration: const Duration(milliseconds: 666),
          curve: Curves.easeInOutExpo,
          onTabChange: (newIndex) {
            setState(() {
              selectedIndex = newIndex;
            });
          },
          gap: 1,
          padding: const EdgeInsets.all(12.0),
          tabs: const [
            GButton(
              icon: Icons.home,
              text: "Home",
            ),
            GButton(
              icon: Icons.newspaper,
              text: "News",
            ),
            GButton(
              icon: Icons.person,
              text: "Account",
            ),
            GButton(
              icon: Icons.settings,
              text: "Settings",
            ),
          ],
        ),
      ),
    );
  }
}
