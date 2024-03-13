import 'package:flutter/material.dart';
import 'package:ta7alelak/helpers/constants.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kColor,
        centerTitle: true,
        title: const Text("Home Page"),
      ),
      backgroundColor: Colors.white,
    );
  }
}
