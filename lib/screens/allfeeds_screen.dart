import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/controller/home_controller.dart';
import 'package:test_app/models/feed.dart';
import 'package:test_app/widgets/card_title_tile.dart';
import 'package:test_app/widgets/icon_indicator.dart';
import 'package:test_app/components/feed/feed_card.dart';

class AllFeedScreen extends StatefulWidget {
  const AllFeedScreen({super.key});

  @override
  State<AllFeedScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<AllFeedScreen> {
  HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Text("Trending")),
      floatingActionButton: FloatingActionButton(
          elevation: 0.0,
          backgroundColor: Theme.of(context).primaryColor,
          onPressed: () {},
          child: Icon(
            Icons.add,
            color: Theme.of(context).colorScheme.primary,
          )),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child:  ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: homeController.feeds.length,
            itemBuilder: (BuildContext ctxt, int index) {
              return FeedCard(
                feedModel: homeController.feeds[index],
              );
            },
          )),
        ),
      
    );
  }
}
