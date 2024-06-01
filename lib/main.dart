import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ta7alelak/cubits/auth_cubit/auth_cubit.dart';
import 'package:ta7alelak/firebase_options.dart';
import 'package:ta7alelak/helpers/constants.dart';
import 'package:ta7alelak/views/book_appointment_view.dart';
import 'package:ta7alelak/views/booked_appointment_view.dart';
import 'package:ta7alelak/views/doctor_details_view.dart';
import 'package:ta7alelak/views/doctors_view.dart';
import 'package:ta7alelak/views/get_started_view.dart';
import 'package:ta7alelak/views/home_view.dart';
import 'package:ta7alelak/views/login_view.dart';
import 'package:ta7alelak/views/medical_test_view.dart';
import 'package:ta7alelak/views/news_view.dart';
import 'package:ta7alelak/views/signup_view.dart';
import 'package:ta7alelak/views/splash_view.dart';
import 'package:ta7alelak/views/thank_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const TA7ALELAK(),
  );
}

class TA7ALELAK extends StatelessWidget {
  const TA7ALELAK({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthCubit(),
        ),
      ],
      child: MaterialApp(
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
          NewsView.id: (context) => const NewsView(),
          // PredictionView.id: (context) => const PredictionView(),
        },
        initialRoute: SplashView.id,
      ),
    );
  }
}
