import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/models/video.dart';
import 'package:test_app/widgets/comment_text_field.dart';

// ignore: must_be_immutable
class VideoDetial extends StatefulWidget {
  VideoModel videoModel;
  VideoDetial({
    super.key,
    required this.videoModel,
  });

  @override
  State<VideoDetial> createState() => _VideoDetialState();
}

class _VideoDetialState extends State<VideoDetial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Column(children: [
        Text("fkdkdfkfdk"),
      ]),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(
          bottom: 20,
        ),
        height: 50,
        child: CommentBox(),
      ),
    );
  }
}
