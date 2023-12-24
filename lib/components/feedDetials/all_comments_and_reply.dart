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
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          child: CommentCard(commentModel: commentModel),
        ),
        Container(
            margin:  EdgeInsets.only(left: 35, top: commentModel.replies.isNotEmpty? 20:0, bottom: commentModel.replies.isNotEmpty? 20:0),
            decoration: const BoxDecoration(
                border: Border(
                    left: BorderSide(
              color: Color.fromARGB(255, 237, 235, 235),
              width: 3,
            ))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: commentModel.replies.length,
                  itemBuilder: (BuildContext ctxt, int index) {
                    return RepleCardWidget(
                      reply: commentModel.replies[index],
                    );
                  },
                ),
                Container(
                    child:
                        commentModel.replies.isNotEmpty ?  Text("Reply",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Theme.of(context).primaryColor
                        ),
                        ) : null)
              ],
            ))
      ],
    );
  }
}
