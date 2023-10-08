import 'package:reddit/features/posts/data/models/author_model.dart';
import 'package:reddit/features/posts/data/models/vote_type.dart';

class VideoModel {
  String? id;
  String? title;
  String? videoUrl;
  AuthorModel? author;
  String? commentsCount;
  String? likesCount;
  VoteType? voteType;

  VideoModel({
    this.id,
    this.title,
    this.videoUrl,
    this.author,
    this.commentsCount,
    this.likesCount,
    this.voteType,
  });

  factory VideoModel.fromJson(Map<String, dynamic> json) {
    return VideoModel(
      id: json['id'],
      title: json['title'],
      videoUrl: json['videoUrl'],
      commentsCount: json['commentsCount'],
      likesCount: json['likesCount'],
      voteType: json['vote_type'] != null
          ? VoteType.values[json['vote_type']]
          : VoteType.none,
      author:
          json['author'] != null ? AuthorModel.fromJson(json['author']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'videoUrl': videoUrl,
      'commentsCount': commentsCount,
      'likesCount': likesCount,
      'vote_type': voteType?.index,
      'author': author?.toJson(),
    };
  }
}

