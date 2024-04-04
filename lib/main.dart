import 'package:flutter/material.dart';
import 'package:ta7alelak/helpers/constants.dart';
import 'package:ta7alelak/views/book_appointment._view.dart';
import 'package:ta7alelak/views/booked_appointment_view.dart';
import 'package:ta7alelak/views/doctor_details_view.dart';
import 'package:ta7alelak/views/doctors_view.dart';
import 'package:ta7alelak/views/get_started_view.dart';
import 'package:ta7alelak/views/home_view.dart';
import 'package:ta7alelak/views/login_view.dart';
import 'package:ta7alelak/views/medical_test_view.dart';
import 'package:ta7alelak/views/signup_view.dart';
import 'package:ta7alelak/views/splash_view.dart';
import 'package:ta7alelak/views/thank_view.dart';

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
        SignupView.id: (context) => const SignupView(),
        HomeView.id: (context) => const HomeView(),
        DoctorsView.id: (context) => const DoctorsView(),
        MedicalTestsView.id: (context) => const MedicalTestsView(),
        DoctorDetailsView.id: (context) => const DoctorDetailsView(),
        BookAppointment.id: (context) => const BookAppointment(),
        ThankView.id: (context) => const ThankView(),
        BookedAppointmentView.id: (context) => const BookedAppointmentView(),
      },
      initialRoute: SplashView.id,
    );
  }
}
