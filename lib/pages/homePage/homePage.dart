import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app_getx/controllers/newsController.dart';
import 'package:news_app_getx/pages/homePage/widgets/newsTile.dart';
import 'package:news_app_getx/pages/homePage/widgets/trendingCard.dart';
import 'package:news_app_getx/pages/newsDetails/newsDetails.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Newscontroller newsController = Get.put(Newscontroller());
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primaryContainer,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Icon(Icons.dashboard),
                  ),
                  Text(
                    "NEWS APP",
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  InkWell(
                    onTap: () {
                      newsController.getTrendingNews();
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primaryContainer,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Icon(Icons.person),
                    ),
                  )
                ],
              ),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hottest News",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    "See All",
                    style: Theme.of(context).textTheme.labelSmall,
                  )
                ],
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Obx(
                    () => Row(
                      children: newsController.trendingNewsList
                          .map(
                            (e) => Trendingcard(
                              ontap: () {
                                Get.to(Newsdetails(
                                  news: e,
                                ));
                              },
                              imageUrl: e.urlToImage ??
                                  "https://c0.wallpaperflare.com/preview/105/94/569/administration-articles-bank-black-and-white.jpg",
                              title: e.title!,
                              author: e.author ?? "Unknown",
                              tag: "Hot News",
                              time: e.publishedAt!,
                            ),
                          )
                          .toList(),
                    ),
                  )),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "For You",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    "See All",
                    style: Theme.of(context).textTheme.labelSmall,
                  )
                ],
              ),
              SizedBox(height: 20),
              Obx(
                () => Column(
                    children: newsController.newsForYouList
                        .map(
                          (e) => Newstile(
                            ontap: () {
                              Get.to(Newsdetails(news: e));
                            },
                            imageUrl: e.urlToImage ??
                                "https://c0.wallpaperflare.com/preview/105/94/569/administration-articles-bank-black-and-white.jpg",
                            time: e.publishedAt!,
                            title: e.title!,
                            author: e.author!,
                          ),
                        )
                        .toList()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
