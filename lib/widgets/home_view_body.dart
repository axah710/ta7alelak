import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ta7alelak/cubits/auth_cubit/auth_cubit.dart';
import 'package:ta7alelak/widgets/home_list_tiles.dart';
import 'package:ta7alelak/widgets/home_view_stack.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  late String currentUserName;

  @override
  void initState() {
    currentUserName = BlocProvider.of<AuthCubit>(context).userName!;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HomeStack(
            currentUserName: currentUserName,
          ),
          const HomeTiles(),
        ],
      ),
    );
  }
}
