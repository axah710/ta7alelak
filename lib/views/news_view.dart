import 'package:flutter/material.dart';
import 'package:ta7alelak/helpers/constants.dart';
import 'package:ta7alelak/widgets/news_view_body.dart';

class NewsView extends StatelessWidget {
  const NewsView({super.key});
    static String id = kNewsViewId;


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NewsViewBody(),
    );
  }
}
