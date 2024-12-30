import 'package:get/get.dart';
import 'package:news_app_getx/pages/articlePage/articlePage.dart';
import 'package:news_app_getx/pages/homePage/homePage.dart';
import 'package:news_app_getx/pages/profile/profilePage.dart';

class BottomNavController extends GetxController {
  RxInt index = 0.obs;

  var pages = [
    HomePage(),
    Articlepage(),
    Profilepage(),
  ];
}
