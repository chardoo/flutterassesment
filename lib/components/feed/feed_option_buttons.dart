import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/controller/home_controller.dart';
import 'package:test_app/models/feed.dart';
import 'package:test_app/widgets/option_button.dart';


 class FeedOptionsButtons extends StatefulWidget {
  FeedModel feedModel;
  FeedOptionsButtons({
    super.key,
    required this.feedModel,
  });

  @override
  State<FeedOptionsButtons> createState() => _VideoOptionsState();
}

class _VideoOptionsState extends State<FeedOptionsButtons> {
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
                          color: widget.feedModel.isLike == true
                              ? Theme.of(context).primaryColor
                              : Theme.of(context).colorScheme.onPrimary,
                          icon: const Icon(Icons.arrow_upward),
                          onPressed: () {
                          //  increaseOrDecreaseLikes(true);
                            homeController.increaseFavoriteCountById(
                                widget.feedModel.id, true);
                          }),
                      Text(
                        '${widget.feedModel.favoriteCount}k',
                        style: TextStyle(
                            color: widget.feedModel.isLike == true
                                ? Theme.of(context).primaryColor
                                : Theme.of(context).colorScheme.onPrimary),
                      ),
                      OptionButton(
                          color: Theme.of(context).colorScheme.onPrimary,
                          icon: const Icon(Icons.arrow_downward),
                          onPressed: () {
                          //  increaseOrDecreaseLikes(false);
                            homeController.increaseFavoriteCountById(
                                widget.feedModel.id, false);
                          }),
                    ],
                  ),
                  Row(
                    children: [
                      OptionButton(
                          color: Theme.of(context).colorScheme.onPrimary,
                          icon: const Icon(Icons.mode_comment_outlined),
                          onPressed: () {}),
                      Text('${widget.feedModel.commentCount}k'),
                    ],
                  ),
                  Row(
                    children: [
                      OptionButton(
                          color: Theme.of(context).colorScheme.onPrimary,
                          icon: const Icon(Icons.share),
                          onPressed: () {}),
                      const Text('Share'),
                    ],
                  )
                ],
              ));
        });
  }

}
