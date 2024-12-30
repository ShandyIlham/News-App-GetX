import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app_getx/controllers/newsController.dart';
import 'package:news_app_getx/pages/articlePage/widgets/searchWidget.dart';
import 'package:news_app_getx/pages/homePage/widgets/newsTile.dart';
import 'package:news_app_getx/pages/newsDetails/newsDetails.dart';

class Articlepage extends StatelessWidget {
  const Articlepage({super.key});

  @override
  Widget build(BuildContext context) {
    Newscontroller newsController = Get.put(Newscontroller());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        toolbarHeight: 30,
        title: Text(
          " ",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: [
              Searchwidget(),
              SizedBox(height: 20),
              Column(
                children: newsController.businessNewsList
                    .map(
                      (e) => Newstile(
                        ontap: () {
                          Get.to(Newsdetails(news: e));
                        },
                        imageUrl: e.urlToImage ??
                            "https://c0.wallpaperflare.com/preview/105/94/569/administration-articles-bank-black-and-white.jpg",
                        title: e.title!,
                        author: e.author ?? "Anonymous",
                        time: e.publishedAt!,
                      ),
                    )
                    .toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
