import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:ta7alelak/cubits/auth_cubit/auth_cubit.dart';
import 'package:ta7alelak/helpers/constants.dart';
import 'package:ta7alelak/helpers/showsnackbarmessage.dart';
import 'package:ta7alelak/widgets/custom_signup_button.dart';
import 'package:ta7alelak/widgets/custom_signup_text_field.dart';

class CustomSignupCardBody extends StatefulWidget {
  const CustomSignupCardBody({super.key});

  @override
  State<CustomSignupCardBody> createState() => _CustomSignupCardBodyState();
}

class _CustomSignupCardBodyState extends State<CustomSignupCardBody> {
  final GlobalKey<FormState> _signupFormKey = GlobalKey();
  String? email, userName, password, confirmPassword;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is SignupLoadingState) {
          isLoading = true;
        } else if (state is SignupSucessState) {
          isLoading = false;
          showSnackBarMessage(context, state.sucessMessage);
          Navigator.pop(context);
        } else if (state is SignupFailureState) {
          isLoading = false;
          showSnackBarMessage(context, state.errorMessage);
        }
      },
      builder: (context, state) {
        return Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: ModalProgressHUD(
            inAsyncCall: isLoading,
            child: Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: Form(
                key: _signupFormKey,
                child: Center(
                  child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.70,
                      width: MediaQuery.of(context).size.width * 0.85,
                      child: CustomScrollView(
                        slivers: [
                          SliverToBoxAdapter(
                            child: SizedBox(
                              height: 555,
                              child: Card(
                                color: kColor,
                                elevation: 0,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 14,
                                    right: 14,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text(
                                        "Signup",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25,
                                          color: Colors.white,
                                        ),
                                      ),
                                      const SizedBox(height: 27),
                                      CustomSignupTextFormField(
                                        focusedBorderColor: Colors.transparent,
                                        onChanged: (data) {
                                          userName = data;
                                        },
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return "This field is required";
                                          }
                                          return null;
                                        },
                                        enabledBorderSideColor:
                                            Colors.transparent,
                                        hintText: 'Full Name',
                                        fillColor:
                                            Colors.white.withOpacity(0.210),
                                        hintColor:
                                            Colors.white.withOpacity(0.790),
                                      ),
                                      const SizedBox(height: 27),
                                      CustomSignupTextFormField(
                                        focusedBorderColor: Colors.transparent,
                                        onChanged: (data) {
                                          email = data;
                                        },
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return "This field is required";
                                          }
                                          return null;
                                        },
                                        enabledBorderSideColor:
                                            Colors.transparent,
                                        hintText: 'Email',
                                        fillColor:
                                            Colors.white.withOpacity(0.210),
                                        hintColor:
                                            Colors.white.withOpacity(0.790),
                                      ),
                                      const SizedBox(height: 27),
                                      CustomSignupTextFormField(
                                        focusedBorderColor: Colors.transparent,
                                        onChanged: (data) {
                                          password = data;
                                        },
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return "This field is required";
                                          }
                                          return null;
                                        },
                                        obscureText: true,
                                        enabledBorderSideColor:
                                            Colors.transparent,
                                        hintText: 'Password',
                                        fillColor:
                                            Colors.white.withOpacity(0.210),
                                        hintColor:
                                            Colors.white.withOpacity(0.790),
                                      ),
                                      const SizedBox(height: 27),
                                      CustomSignupTextFormField(
                                        focusedBorderColor: Colors.transparent,
                                        onChanged: (data) {
                                          confirmPassword = data;
                                        },
                                        obscureText: true,
                                        enabledBorderSideColor:
                                            Colors.transparent,
                                        hintText: 'Re-type Password',
                                        fillColor:
                                            Colors.white.withOpacity(0.210),
                                        hintColor:
                                            Colors.white.withOpacity(0.790),
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return "This field is required";
                                          }
                                          if (value != password) {
                                            return "Passwords do not match";
                                          }
                                          return null;
                                        },
                                      ),
                                      const SizedBox(height: 37),
                                      CustomSignupButton(
                                        onTap: () {
                                          if (_signupFormKey.currentState!
                                              .validate()) {
                                            BlocProvider.of<AuthCubit>(context)
                                                .userSignupWithEmailAndPassword(
                                              email: email!,
                                              password: password!,
                                              userName: userName!,
                                            );
                                          }
                                        },
                                        buttonName: "Signup",
                                        width: 210,
                                        height: 55,
                                        color: Colors.white.withOpacity(0.321),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      )),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
