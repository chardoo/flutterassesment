import 'dart:html';

import 'package:flutter/material.dart';
import 'package:test_app/components/feedDetials/comment_card.dart';
import 'package:test_app/components/feedDetials/reply_card.dart';
import 'package:test_app/models/comment.dart';

class AllCommentAndReply extends StatelessWidget {
  const AllCommentAndReply({super.key, required this.commentModel});
  final CommentModel commentModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CommentCard(commentModel: commentModel),
        Container(
          margin: EdgeInsets.only(
              left: 35,
              top: commentModel.replies.isNotEmpty ? 20 : 0,
              bottom: commentModel.replies.isNotEmpty ? 20 : 0),
          decoration: const BoxDecoration(
              border: Border(
                  left: BorderSide(
            color: Color.fromARGB(255, 237, 235, 235),
            width: 3,
          ))),
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: commentModel.replies.length,
            itemBuilder: (BuildContext ctxt, int index) {
              return RepleCardWidget(
                reply: commentModel.replies[index],
              );
            },
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 5),
            child: commentModel.replies.isNotEmpty
                ? Text(
                    "Reply",
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  )
                : null)
      ],
    );
  }
}
