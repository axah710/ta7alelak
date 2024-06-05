import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:ta7alelak/cubits/auth_cubit/auth_cubit.dart';
import 'package:ta7alelak/helpers/constants.dart';
import 'package:ta7alelak/helpers/showsnackbarmessage.dart';
import 'package:ta7alelak/views/get_started_view.dart';
import 'package:ta7alelak/widgets/user_view_body_options.dart';
import 'package:ta7alelak/widgets/user_view_body_user_details.dart';
import 'package:ta7alelak/widgets/user_view_body_user_image.dart';

class UserViewBody extends StatelessWidget {
  const UserViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    bool isLoading = false;
    double screenHeight = MediaQuery.of(context).size.height;
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is SignoutLoadingState) {
          isLoading = true;
        } else if (state is SignoutSucessState) {
          isLoading = false;
          showSnackBarMessage(context, state.sucessMessage);
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => const GetStartedView(),),
            ModalRoute.withName(kGetStartedViewId),
          );
        } else if (state is SignoutFailureState) {
          isLoading = false;
          showSnackBarMessage(context, state.errorMessage);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: isLoading,
          child: Column(
            children: [
              SizedBox(
                height: screenHeight * 0.1,
              ),
              const UserViewBodyUserImage(),
              SizedBox(
                height: screenHeight * 0.01,
              ),
              const UserViewBodyUserDetails(),
              SizedBox(
                height: screenHeight * 0.07,
              ),
              const UserViewBodyOptions(),
            ],
          ),
        );
      },
    );
  }
}
