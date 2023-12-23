import 'package:uuid/uuid.dart';

class VideoModel {
  final String id;
  late int commentCount;
  late int favoriteCount;
  final DateTime postedOn;
  final String videoUrl;
  final String heading;
  final String description;
  late bool isLike;

  VideoModel({
    required this.id,
    required this.commentCount,
    required this.favoriteCount,
    required this.postedOn,
    required this.videoUrl,
    required this.heading,
    required this.description,
    required this.isLike,
  });

  factory VideoModel.fromJson(Map<String, dynamic> json) {
    return VideoModel(
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
