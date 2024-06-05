import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ta7alelak/cubits/auth_cubit/auth_cubit.dart';
import 'package:ta7alelak/helpers/constants.dart';

class UserViewBodyUserDetails extends StatelessWidget {
  const UserViewBodyUserDetails({super.key});

  @override
  Widget build(BuildContext context) {
    String userEmail = BlocProvider.of<AuthCubit>(context).userEmail!;
    String userName = BlocProvider.of<AuthCubit>(context).userName!;

    return Column(
      children: [
        Text(
          userName,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: kColor,
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
        Text(
          userEmail,
          style: const TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
