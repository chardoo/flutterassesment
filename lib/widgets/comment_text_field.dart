
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommentBox extends StatelessWidget {
  const CommentBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28),
      child: Row(
        children: [
          const Flexible(
              child: SizedBox(
            height: 45,
            child: TextField(
              decoration: InputDecoration(
                hintText: "Add a comment...",
                hintStyle: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey,
                ),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)),
              ),
            ),
          )),
          const SizedBox(width: 14),
          Material(
            type: MaterialType.transparency,
            child: Ink(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Colors.deepOrange,
              ),
              child: InkWell(
                //borderRadius: BorderRadius.circular(100.0),
                onTap: () {},
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.send,
                    size: 25.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
