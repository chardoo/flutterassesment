import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/controller/home_controller.dart';
import 'package:test_app/models/video.dart';
import 'package:test_app/widgets/card.dart';
import 'package:test_app/widgets/card_title_tile.dart';
import 'package:test_app/widgets/icon_indicator.dart';
import 'package:test_app/components/video/main_card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Home> {
  HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          child:Obx(() =>   ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: homeController.video.length,
            itemBuilder: (BuildContext ctxt, int index) {
              return VideoCard(
                videoModel: homeController.video[index],
              );
            },
          )),
        ),
      ),
    );
  }
}
