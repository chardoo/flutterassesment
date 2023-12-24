import 'package:flutter/material.dart';
import 'package:test_app/models/comment.dart';

class CommentCard extends StatefulWidget {
  CommentCard({super.key, required this.commentModel});
  CommentModel commentModel;
  @override
  State<CommentCard> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CommentCard> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 20,
        child: ClipOval(
          child: Image.network(
            widget.commentModel.profileUrl,
          ),
        ),
      ),
      titleAlignment: ListTileTitleAlignment.top,
      title: Text(
        widget.commentModel.handleName,
        style: Theme.of(context)
            .textTheme
            .bodyMedium
            ?.copyWith(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        widget.commentModel.message,
        style: Theme.of(context)
            .textTheme
            .bodySmall
            ?.copyWith(fontWeight: FontWeight.normal, fontSize: 14),
      ),
      trailing: Icon(Icons.more_vert),
    );
  }
}
