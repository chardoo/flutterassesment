import 'package:uuid/uuid.dart';

class FeedModel {
  final String id;
  late int commentCount;
  late int favoriteCount;
  final DateTime postedOn;
  final String videoUrl;
  final String heading;
   final String profileImageUrl;
  final String handleName;
   final String author;
  final String description;
  late bool isLike;

  FeedModel({
    required this.handleName,
    required this.profileImageUrl,
    required this.id,
    required this.commentCount,
    required this.favoriteCount,
    required this.postedOn,
    required this.videoUrl,
    required this.heading,
    required this.description,
    required this.isLike,
    required this.author
  });

  factory FeedModel.fromJson(Map<String, dynamic> json) {
    return FeedModel(
      handleName: json['handleName'],
      profileImageUrl: json['profileImageUrl'],
      author: json['author'],
      isLike: json['isLike'],
      id: json['id'],
      commentCount: json['commentCount'] ?? 0,
      favoriteCount: json['favoriteCount'] ?? 0,
      postedOn: json['postedOn'],
      videoUrl: json['videoUrl'] ?? 0,
      heading: json['heading'],
      description: json['description'],
    );
  }
  @override
  String toString() {
    return 'VideoModel(  id: $id, commentCount: $commentCount, favoriteCount: $favoriteCount)';
    ;
  }
}
