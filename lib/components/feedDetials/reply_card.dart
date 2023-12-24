import 'package:flutter/material.dart';
import 'package:test_app/models/comment.dart';

class RepleCardWidget extends StatefulWidget {
  RepleCardWidget({super.key, required this.reply});
  Reply reply;
  @override
  State<RepleCardWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<RepleCardWidget> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 20,
        child: ClipOval(
          child: Image.network(
            widget.reply.profileUrl,
          ),
        ),
      ),
      titleAlignment: ListTileTitleAlignment.top,
      title: Text(
        widget.reply.handleName,
        style: Theme.of(context)
            .textTheme
            .bodyMedium
            ?.copyWith(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        widget.reply.message,
        style: Theme.of(context)
            .textTheme
            .bodySmall
            ?.copyWith(fontWeight: FontWeight.normal, fontSize: 14),
      ),
      trailing: Icon(Icons.more_vert),
    );
  }
}
