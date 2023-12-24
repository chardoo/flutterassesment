import 'package:flutter/material.dart';
import 'package:test_app/models/feed.dart';

class CardDetailsAppBar extends StatelessWidget {
   CardDetailsAppBar(
      {super.key,
      required this.feedModel,
      this.onTrailingPressed,
      this.ontap
      });
    final Function()? onTrailingPressed;
  final Function()? ontap;
  final FeedModel feedModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(

      leading: CircleAvatar(
          radius: 15,
          child: ClipOval(
            child: Image.network(
              feedModel.profileImageUrl,
            ),
          )),
      title: Text(
         'r/${feedModel.handleName }',
        
        
        style: Theme.of(context)
            .textTheme
            .bodyMedium
            ?.copyWith(fontWeight: FontWeight.bold),
        
      ),
      subtitle: Text(
        feedModel.author,
        style: Theme.of(context)
            .textTheme
            .bodySmall
            ?.copyWith(fontWeight: FontWeight.normal, fontSize: 14),
      ),
      trailing: GestureDetector(
          onTap: onTrailingPressed,
          child: TextButton(
             style: TextButton.styleFrom(
        side: BorderSide(
          color: Theme.of(context).primaryColor
        ),
      ),
            onPressed: () {},
            child:  Text("JOIN",
            style: TextStyle(color: Theme.of(context).primaryColor),
            ),
          )),
    );
  }
}
