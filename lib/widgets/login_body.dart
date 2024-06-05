// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:ta7alelak/cubits/auth_cubit/auth_cubit.dart';
import 'package:ta7alelak/helpers/showsnackbarmessage.dart';
import 'package:ta7alelak/views/home_view.dart';
import 'package:ta7alelak/views/medical_test_view.dart';
import 'package:ta7alelak/views/signup_view.dart';
import 'package:ta7alelak/widgets/custom_button.dart';
import 'package:ta7alelak/widgets/custom_text_form_field.dart';
import 'package:ta7alelak/widgets/google_button.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

GlobalKey<FormState> formKey = GlobalKey();
String? email, password;
bool isLoading = false;

class _LoginBodyState extends State<LoginBody> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is LoginLoadingState) {
          isLoading = true;
        } else if (state is LoginSucessState) {
          isLoading = false;
          Navigator.pushNamed(context, HomeView.id);
        } else if (state is LoginFailureState) {
          isLoading = false;
          showSnackBarMessage(context, state.errorMessage);
        } else if (state is SignInAnonymouslyLoadingState) {
          isLoading = true;
        } else if (state is SignInAnonymouslySucessState) {
          isLoading = false;
          Navigator.pushNamed(context, MedicalTestsView.id);
          showSnackBarMessage(context, state.sucessMessage);
        } else if (state is SignInAnonymouslyFailureState) {
          isLoading = false;
          showSnackBarMessage(context, state.errorMessage);
        } else {
          isLoading = false;
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: isLoading,
          child: Padding(
              padding: EdgeInsets.only(
                left: 11,
                right: 11,
                bottom: MediaQuery.of(context).viewInsets.bottom,
                // Enable auto padding when the keyboard appears ...
                // Dynamically adjust the padding at the bottom of a widget.
                // This is particularly useful in scenarios where you want to
                // avoid UI elements being obscured by the
                // keyboard when it appears.
              ),
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Form(
                      key: formKey,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 99,
                          ),
                          Image.asset(
                            "assets/images/undrawmedicineb2.png",
                          ),
                          Text(
                            "Welcome Back!",
                            style: TextStyle(
                              fontSize: 33,
                              color: Colors.black.withOpacity(0.75),
                            ),
                          ),
                          Text(
                            "Please Login To Your Account",
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.black.withOpacity(0.75),
                            ),
                          ),
                          const SizedBox(
                            height: 22,
                          ),
                          CustomTextFormField(
                            labelText: 'Email Address',
                            myIcon: Icons.email,
                            onChanged: (data) {
                              email = data;
                            },
                          ),
                          const SizedBox(
                            height: 11,
                          ),
                          CustomTextFormField(
                            obscureText: true,
                            labelText: 'Password',
                            myIcon: Icons.lock,
                            onChanged: (data) {
                              password = data;
                            },
                          ),
                          const SizedBox(
                            height: 22,
                          ),
                          CustomButton(
                            onTap: () {
                              if (formKey.currentState!.validate()) {
                                BlocProvider.of<AuthCubit>(context)
                                    .userSigninWithEmailAndPassword(
                                  email: email!,
                                  password: password!,
                                );
                              }
                            },
                            buttonName: 'Login',
                          ),
                          const SizedBox(
                            height: 11,
                          ),
                          const Text(
                            "Forget Password?",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Dont't Have An Account?",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                    context,
                                    SignupView.id,
                                  );
                                },
                                child: const Text(
                                  "  Signup",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 14,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Divider(
                                  endIndent: 7,
                                  indent: 13,
                                  color: Colors.black.withOpacity(0.33),
                                ),
                              ),
                              const Text("OR"),
                              Expanded(
                                child: Divider(
                                  endIndent: 13,
                                  indent: 7,
                                  color: Colors.black.withOpacity(0.33),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 14,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GoogleButton(
                                onTap: () async {
                                  await BlocProvider.of<AuthCubit>(context)
                                      .signInAnonymously();
                                },
                                buttonName: 'Anonymous',
                                imageName: "assets/images/user2.png",
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.07,
                              ),
                              GoogleButton(
                                onTap: () async {
                                  await BlocProvider.of<AuthCubit>(context)
                                      .signInWithGoogle();
                                  if (context.mounted) {
                                    Navigator.pushNamed(
                                      context,
                                      HomeView.id,
                                    );
                                  }
                                },
                                buttonName: 'Google',
                                imageName: "assets/images/google.png",
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )),
        );
      },
    );
  }
}
