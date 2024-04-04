import 'package:flutter/material.dart';
import 'package:ta7alelak/helpers/constants.dart';
import 'package:ta7alelak/navigation/custom_bottom_navigation_bar.dart';
// import 'package:ta7alelak/widgets/nav_test.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = kHomeViewId;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomBottomNavigationBar(),
    );
  }
}
