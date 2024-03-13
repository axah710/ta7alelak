// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:ta7alelak/helpers/constants.dart';
import 'package:ta7alelak/views/second_splash_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});
  static String id= kSplashViewId;

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SecondView(),
    );
  }
}
