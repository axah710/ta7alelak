import 'package:flutter/material.dart';
import 'package:ta7alelak/widgets/home_list_tiles.dart';
import 'package:ta7alelak/widgets/home_view_stack.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          HomeStack(),
          HomeTiles(),
        ],
      ),
    );
  }
}
