import 'package:reddit/core/resources/app_contant.dart';
import 'package:reddit/core/resources/dummy_data.dart';
import 'package:reddit/features/posts/data/models/author_model.dart';
import 'package:reddit/features/posts/data/models/comment_model.dart';
import 'package:reddit/features/posts/data/models/video_model.dart';
import 'package:reddit/features/posts/data/models/vote_type.dart';

class PostRepo {
  VideoModel voteVideo({
    required VideoModel model,
    required VoteType newVote,
  }) {
    for (var element in videoModelList) {
      if (element.id == model.id) {
        if (model.voteType == newVote) {
          model.voteType = VoteType.none;
        } else {
          model.voteType = newVote;
        }
      }
    }

    return model;
  }

  VoteType voteComment(
      {required CommentModel model,
      required VoteType newVote,
      required VoteType currentVote}) {
    VoteType returnVoteType = VoteType.none;

    if (currentVote == newVote) {
      returnVoteType = VoteType.none;
    } else {
      returnVoteType = newVote;
    }

    return returnVoteType;
  }

  CommentModel addComment({required String text}) {
    CommentModel model = CommentModel(
      id: '${comments.length + 1}',
      comment: text,
      voteCount: 0,
      voteType: VoteType.none,
      createdAt: "now",
      author: AuthorModel(
        id: userId,
        name: 'Ibrahim',
        avatar: 'https://i.imgur.com/BoN9kdC.png',
      ),
    );

    return model;
  }

  CommentModel deleteComment({required CommentModel model}) {
    CommentModel returnModel = model;

    return returnModel;
  }
}
