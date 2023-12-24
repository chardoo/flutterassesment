import 'package:flutter/material.dart';
import 'package:test_app/models/feed.dart';

class CardTitleCard extends StatelessWidget {
  const CardTitleCard(
      {super.key,
      required this.feedModel,
      this.onTrailingPressed,
      this.ontap});
  final FeedModel feedModel;
 
  final Function()? onTrailingPressed;
  final Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: ontap,
      leading: CircleAvatar(
          radius: 15,
          child: ClipOval(
            child: Image.network(
              feedModel.profileImageUrl,
            ),
          )),
      title: Text('r/${feedModel.handleName}',
      ),
      trailing: GestureDetector(
          onTap: onTrailingPressed, child: const Icon(Icons.more_vert)),
    );
  }
}
