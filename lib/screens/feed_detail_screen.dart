import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/components/feed/feed_card.dart';
import 'package:test_app/components/feedDetials/all_comments_and_reply.dart';
import 'package:test_app/components/feedDetials/feed_video_card.dart';
import 'package:test_app/components/feedDetials/detials_appBar.dart';
import 'package:test_app/controller/comment_controller.dart';
import 'package:test_app/models/feed.dart';
import 'package:test_app/widgets/card_title_tile.dart';
import 'package:test_app/widgets/comment_text_field.dart';

// ignore: must_be_immutable
class FeedDetialScreen extends StatefulWidget {
  FeedModel feedModel;
  FeedDetialScreen({
    super.key,
    required this.feedModel,
  });

  @override
  State<FeedDetialScreen> createState() => _VideoDetialState();
}

class _VideoDetialState extends State<FeedDetialScreen> {
  CommentController commentController = Get.put(CommentController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: CardDetailsAppBar(
            feedModel: widget.feedModel,
          )),
      body: SingleChildScrollView(
          child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                FeedDetailsCard(feedModel: widget.feedModel),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Text(
                          "Best Comment",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        child: FutureBuilder(
                            future: commentController
                                .getComment(widget.feedModel.id),
                            builder:
                                (BuildContext context, AsyncSnapshot snapshot) {
                              if (snapshot.data == null) {
                                return const Center(
                                  child: Text('Loading...'),
                                );
                              } else {
                                return ListView.builder(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: snapshot.data.length,
                                  itemBuilder: (BuildContext ctxt, int index) {
                                    return AllCommentAndReply(
                                      commentModel: snapshot.data[index],
                                    );
                                  },
                                );
                              }
                            }),
                      )
                    ],
                  ),
                )
              ]))),
      bottomNavigationBar: Container(
        color: Colors.white,
        margin: const EdgeInsets.only(
          bottom: 20,
        ),
        height: 50,
        child: const CommentBox(),
      ),
    );
  }
}
