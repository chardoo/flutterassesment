import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/components/feed/feed_option_buttons.dart';
import 'package:test_app/models/feed.dart';
import 'package:test_app/screens/feed_detail_screen.dart';
import 'package:test_app/widgets/card_title_tile.dart';
import 'package:test_app/components/feed/feed_with_heading_subtext.dart';

class FeedCard extends StatefulWidget {
  FeedCard({
    super.key,
    required this.feedModel,
  });
  FeedModel feedModel;
  @override
  State<FeedCard> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<FeedCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 16.h),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r), color: Colors.white),
        child: Padding(
            padding:
                EdgeInsets.only(bottom: 5.h, top: 5.h, left: 5.w, right: 5.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CardTitleCard(
                  feedModel: widget.feedModel,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => FeedDetialScreen(
                                feedModel: widget.feedModel,
                              )));
                    },
                    child: FeedTemplate(
                      heading: widget.feedModel.heading,
                      subTitle: widget.feedModel.description,
                      imageUrl: widget.feedModel.videoUrl,
                    )),

                    FeedOptionsButtons(
                    feedModel: widget.feedModel,
                    
                    )
              ],
            )));
  }
}
