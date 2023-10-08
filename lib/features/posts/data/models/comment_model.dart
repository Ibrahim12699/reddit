import 'package:reddit/features/posts/data/models/author_model.dart';
import 'package:reddit/features/posts/data/models/vote_type.dart';

class CommentModel {
  final String? id;
  final String? comment;
  final AuthorModel? author;
  final String? createdAt;
  int? voteCount;
  VoteType? voteType;
  CommentModel? replay;

  CommentModel({
    this.id,
    this.comment,
    this.author,
    this.createdAt,
    this.voteCount,
    this.voteType,
    this.replay,
  });

  factory CommentModel.fromJson(Map<String, dynamic> json) {
    return CommentModel(
      id: json['id'],
      comment: json['comment'],
      author: AuthorModel.fromJson(json['author']),
      createdAt: json['createdAt'],
      voteCount: json['voteCount'],
      voteType: json['vote_type'] != null
          ? VoteType.values[json['vote_type']]
          : VoteType.none,
      replay:
          json['replay'] != null ? CommentModel.fromJson(json['replay']) : null,
    );
  }
}
