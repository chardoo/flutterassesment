import 'package:uuid/uuid.dart';

class CommentModel {
  final String id;
  final String profileUrl;
  final String handleName;
  final String message;
  final DateTime postedOn;
  final List<Reply> replies;

  CommentModel({
    required  this.id,
    required this.profileUrl,
    required this.handleName,
    required this.message,
    required this.postedOn,
    this.replies = const [],
  }); // Generate unique ID using UUID

  factory CommentModel.fromJson(Map<String, dynamic> json) {
    return CommentModel(
      id:  json['id'],
      profileUrl: json['profileUrl'],
      handleName: json['handleName'],
      message: json['message'],
      postedOn: json['postedOn'],
      replies:
          (json['replies'] as List?)?.map((e) => Reply.fromJson(e)).toList() ??
              [],
    );
  }
}

class Reply {
  final String id;
  final String profileUrl;
  final String handleName;
  final String message;
  final DateTime postedOn;

  Reply({
    required this.id,
    required this.profileUrl,
    required this.handleName,
    required this.message,
    required this.postedOn,
  }); // Generate unique ID using UUID

  factory Reply.fromJson(Map<String, dynamic> json) {
    return Reply(
      id: json['id'],
      profileUrl: json['profileUrl'],
      handleName: json['handleName'],
      message: json['message'],
      postedOn: json['postedOn'],
    );
  }
}
