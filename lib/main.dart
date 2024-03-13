import 'package:flutter/material.dart';
import 'package:ta7alelak/helpers/constants.dart';
import 'package:ta7alelak/views/get_started_view.dart';
import 'package:ta7alelak/views/login_view.dart';
import 'package:ta7alelak/views/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: kColor,
        ),
        useMaterial3: true,
      ),
      routes: {
        GetStartedView.id: (context) => const GetStartedView(),
        SplashView.id: (context) => const SplashView(),
        LoginView.id: (context) => const LoginView(),
      },
      initialRoute: SplashView.id,
      // home: const SplashView(),
    );
  }
}
