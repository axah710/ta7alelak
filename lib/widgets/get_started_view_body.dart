import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:ta7alelak/cubits/auth_cubit/auth_cubit.dart';
import 'package:ta7alelak/views/home_view.dart';
import 'package:ta7alelak/views/login_view.dart';
import 'package:ta7alelak/widgets/custom_button.dart';
import 'package:ta7alelak/widgets/get_started_stack.dart';

class GetStartedViewBody extends StatefulWidget {
  const GetStartedViewBody({super.key});

  @override
  State<GetStartedViewBody> createState() => _GetStartedViewBodyState();
}

bool isLoading = false;

class _GetStartedViewBodyState extends State<GetStartedViewBody> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is CheckCurrentUserLoadingState) {
          isLoading = true;
        } else if (state is CheckCurrentUserAuthenticatedState) {
          isLoading = false;
          Navigator.pushNamed(
            context,
            HomeView.id,
          );
        } else if (state is CheckCurrentUserUnauthenticatedState) {
          isLoading = false;
          Navigator.pushNamed(
            context,
            LoginView.id,
          );
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: isLoading,
          child: Column(
            children: [
              const GetStartedStack(),
              const SizedBox(
                height: 18,
              ),
              const Divider(
                thickness: 2,
                indent: 75,
                endIndent: 75,
              ),
              SizedBox(
                height: screenHeight * 0.09,
              ),
              CustomButton(
                buttonName: 'Get Started',
                onTap: () {
                  BlocProvider.of<AuthCubit>(context).checkCurrentUser();
                  // Navigator.pushNamed(
                  //   context,
                  //   LoginView.id,
                  // );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
