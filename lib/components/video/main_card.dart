import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/components/video/video_options.dart';
import 'package:test_app/models/video.dart';
import 'package:test_app/screens/video_detail.dart';
import 'package:test_app/widgets/card_title_tile.dart';
import 'package:test_app/components/video/videocard.dart';

class VideoCard extends StatefulWidget {
  VideoCard({
    super.key,
    required this.videoModel,
  });
  VideoModel videoModel;
  @override
  State<VideoCard> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<VideoCard> {
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
                  id: widget.videoModel.id,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => VideoDetial(
                                videoModel: widget.videoModel,
                              )));
                    },
                    child: VideoTemplate(
                      heading: widget.videoModel.heading,
                      subTitle: widget.videoModel.description,
                      imageUrl: widget.videoModel.videoUrl,
                    )),

                    VideoOptions(
                    id: widget.videoModel.id,  
                    commentCount: widget.videoModel.commentCount,
                    favouriteCount: widget.videoModel.favoriteCount,
                    
                    )
              ],
            )));
  }
}
