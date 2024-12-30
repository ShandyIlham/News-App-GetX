import 'package:flutter/material.dart';
import 'package:news_app_getx/config/colors.dart';

class Profilepage extends StatelessWidget {
  const Profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: darkDivColor,
        title: Text(
          "Profiles",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
