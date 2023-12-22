import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/controller/home_controller.dart';
import 'package:test_app/widgets/option_button.dart';

class VideoOptions extends StatelessWidget {
  String id;
  int favouriteCount;
  int commentCount;
  VideoOptions(
      {super.key,
      required this.id,
      required this.commentCount,
      required this.favouriteCount});

  HomeController homeController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            OptionButton(
                icon: const Icon(Icons.arrow_upward),
                onPressed: () {
                  homeController.increaseFavoriteCountById(id, true);
                }),
            Text('${favouriteCount}k'),
            OptionButton(
                icon: const Icon(Icons.arrow_downward), onPressed: () {}),
          ],
        ),
        const Row(
          children: [],
        ),
        const Row(
          children: [],
        )
      ],
    );
  }
}
