import 'package:flutter/material.dart';
import 'package:ta7alelak/navigation/custom_bottom_navigation_bar.dart';

class UserView extends StatelessWidget {
  const UserView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: CustomBottomNavigationBar(),
        );
  }
}
