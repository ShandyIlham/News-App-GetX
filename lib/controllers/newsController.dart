import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:news_app_getx/models/newsModel.dart';

class Newscontroller extends GetxController {
  RxList<NewsModel> trendingNewsList = <NewsModel>[].obs;
  RxList<NewsModel> newsForYouList = <NewsModel>[].obs;
  RxList<NewsModel> appleNewsList = <NewsModel>[].obs;
  RxList<NewsModel> teslaNewsList = <NewsModel>[].obs;
  RxList<NewsModel> businessNewsList = <NewsModel>[].obs;

  void onInit() async {
    super.onInit();
    getNewsForYou();
    getTrendingNews();
    getBusinessNews();
  }

  Future<void> getTrendingNews() async {
    var baseURL =
        "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=5cbc968f032440618d573957faff95d9";
    try {
      var response = await http.get(Uri.parse(baseURL));
      print(response);
      if (response.statusCode == 200) {
        print(response.body);
        var body = jsonDecode(response.body);
        var articles = body["articles"];
        for (var news in articles) {
          trendingNewsList.add(NewsModel.fromJson(news));
        }
      } else {
        print("Something went wrong");
      }
    } catch (ex) {
      print(ex);
    }
  }

  Future<void> getNewsForYou() async {
    var baseURL =
        "https://newsapi.org/v2/everything?domains=wsj.com&apiKey=5cbc968f032440618d573957faff95d9";
    try {
      var response = await http.get(Uri.parse(baseURL));
      print(response);
      if (response.statusCode == 200) {
        print(response.body);
        var body = jsonDecode(response.body);
        var articles = body["articles"];
        for (var news in articles) {
          newsForYouList.add(NewsModel.fromJson(news));
        }
      } else {
        print("Something went wrong");
      }
    } catch (ex) {
      print(ex);
    }
  }

  Future<void> getAppleNews() async {
    var baseURL =
        "https://newsapi.org/v2/everything?q=apple&from=2024-12-28&to=2024-12-28&sortBy=popularity&apiKey=5cbc968f032440618d573957faff95d9";
    try {
      var response = await http.get(Uri.parse(baseURL));
      print(response);
      if (response.statusCode == 200) {
        print(response.body);
        var body = jsonDecode(response.body);
        var articles = body["articles"];
        for (var news in articles) {
          appleNewsList.add(NewsModel.fromJson(news));
        }
      } else {
        print("Something went wrong");
      }
    } catch (ex) {
      print(ex);
    }
  }

  Future<void> getTeslaNews() async {
    var baseURL =
        "https://newsapi.org/v2/everything?q=tesla&from=2024-11-29&sortBy=publishedAt&apiKey=5cbc968f032440618d573957faff95d9";
    try {
      var response = await http.get(Uri.parse(baseURL));
      print(response);
      if (response.statusCode == 200) {
        print(response.body);
        var body = jsonDecode(response.body);
        var articles = body["articles"];
        for (var news in articles) {
          teslaNewsList.add(NewsModel.fromJson(news));
        }
      } else {
        print("Something went wrong");
      }
    } catch (ex) {
      print(ex);
    }
  }

  Future<void> getBusinessNews() async {
    var baseURL =
        "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=5cbc968f032440618d573957faff95d9";
    try {
      var response = await http.get(Uri.parse(baseURL));
      print(response);
      if (response.statusCode == 200) {
        print(response.body);
        var body = jsonDecode(response.body);
        var articles = body["articles"];
        for (var news in articles) {
          businessNewsList.add(NewsModel.fromJson(news));
        }
      } else {
        print("Something went wrong");
      }
    } catch (ex) {
      print(ex);
    }
  }
}
