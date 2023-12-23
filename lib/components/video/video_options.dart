import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/controller/home_controller.dart';
import 'package:test_app/models/video.dart';
import 'package:test_app/widgets/option_button.dart';

class VideoOptions extends StatefulWidget {
  VideoModel videoModel;
  VideoOptions({
    super.key,
    required this.videoModel,
  });

  @override
  State<VideoOptions> createState() => _VideoOptionsState();
}

class _VideoOptionsState extends State<VideoOptions> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (HomeController homeController) {
          return Container(
              margin: EdgeInsets.only(right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      OptionButton(
                          color: widget.videoModel.isLike == true
                              ? Theme.of(context).primaryColor
                              : Theme.of(context).colorScheme.onPrimary,
                          icon: const Icon(Icons.arrow_upward),
                          onPressed: () {
                          //  increaseOrDecreaseLikes(true);
                            homeController.increaseFavoriteCountById(
                                widget.videoModel.id, true);
                          }),
                      Text(
                        '${widget.videoModel.favoriteCount}k',
                        style: TextStyle(
                            color: widget.videoModel.isLike == true
                                ? Theme.of(context).primaryColor
                                : Theme.of(context).colorScheme.onPrimary),
                      ),
                      OptionButton(
                          color: Theme.of(context).colorScheme.onPrimary,
                          icon: const Icon(Icons.arrow_downward),
                          onPressed: () {
                          //  increaseOrDecreaseLikes(false);
                            homeController.increaseFavoriteCountById(
                                widget.videoModel.id, false);
                          }),
                    ],
                  ),
                  Row(
                    children: [
                      OptionButton(
                          color: Theme.of(context).colorScheme.onPrimary,
                          icon: const Icon(Icons.mode_comment_outlined),
                          onPressed: () {}),
                      Text('${widget.videoModel.commentCount}k'),
                    ],
                  ),
                  Row(
                    children: [
                      OptionButton(
                          color: Theme.of(context).colorScheme.onPrimary,
                          icon: const Icon(Icons.share),
                          onPressed: () {}),
                      Text('Share'),
                    ],
                  )
                ],
              ));
        });
  }

}
