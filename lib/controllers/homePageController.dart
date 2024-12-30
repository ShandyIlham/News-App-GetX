import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app_getx/components/navbar.dart';
import 'package:news_app_getx/controllers/bottomNavController.dart';

class Homepagecontroller extends StatelessWidget {
  const Homepagecontroller({super.key});

  @override
  Widget build(BuildContext context) {
    BottomNavController controller = Get.put(BottomNavController());

    return Scaffold(
      floatingActionButton: Navbar(),
      body: Obx(
        () => controller.pages[controller.index.value],
      ),
    );
  }
}
