import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app_getx/controllers/bottomNavController.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    BottomNavController controller = Get.put(BottomNavController());
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                width: 200,
                height: 60,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        controller.index.value = 0;
                      },
                      child: Obx(
                        () => AnimatedContainer(
                          duration: Duration(milliseconds: 200),
                          curve: Curves.bounceInOut,
                          width: 40,
                          height: 40,
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: controller.index.value == 0
                                ? Theme.of(context).colorScheme.primary
                                : null,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.home,
                              size: 25,
                              color: controller.index.value == 0
                                  ? Theme.of(context).colorScheme.onBackground
                                  : Theme.of(context)
                                      .colorScheme
                                      .secondaryContainer,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        controller.index.value = 1;
                      },
                      child: Obx(
                        () => AnimatedContainer(
                          duration: Duration(milliseconds: 200),
                          curve: Curves.bounceInOut,
                          width: 40,
                          height: 40,
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: controller.index.value == 1
                                ? Theme.of(context).colorScheme.primary
                                : null,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.newspaper,
                              size: 25,
                              color: controller.index.value == 1
                                  ? Theme.of(context).colorScheme.onBackground
                                  : Theme.of(context)
                                      .colorScheme
                                      .secondaryContainer,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        controller.index.value = 2;
                      },
                      child: Obx(
                        () => AnimatedContainer(
                          duration: Duration(milliseconds: 200),
                          curve: Curves.bounceInOut,
                          width: 40,
                          height: 40,
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: controller.index.value == 2
                                ? Theme.of(context).colorScheme.primary
                                : null,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.settings,
                              size: 25,
                              color: controller.index.value == 2
                                  ? Theme.of(context).colorScheme.onBackground
                                  : Theme.of(context)
                                      .colorScheme
                                      .secondaryContainer,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
