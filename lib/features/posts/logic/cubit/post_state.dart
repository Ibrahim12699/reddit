import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reddit/features/posts/data/models/comment_filter_model.dart';
import 'package:reddit/features/posts/data/models/comment_model.dart';
import 'package:reddit/features/posts/data/models/video_model.dart';
import 'package:reddit/features/posts/data/models/vote_type.dart';

part 'post_state.freezed.dart';

@freezed
class PostState<T> with _$PostState<T> {
  const factory PostState.idle() = Idle<T>;

  const factory PostState.changeVisibilityController(bool visibility) =
      ChangeVisibilityController<T>;

  const factory PostState.voteVideoSuccess(VideoModel model,int i) =
      VoteVideoSuccess<T>;

  const factory PostState.showCommentsBottomSheetSuccess(bool visibility) =
      ShowCommentsBottomSheetSuccess<T>;

  const factory PostState.voteCommentSuccess(
      VoteType voteType, CommentModel model) = VoteCommentSuccess<T>;

  const factory PostState.setCommentFilterSuccess(CommentFilterModel model) =
      SetCommentFilterSuccess<T>;

  const factory PostState.addCommentSuccess(CommentModel model) =
      AddCommentSuccess<T>;

  const factory PostState.deleteCommentSuccess(CommentModel model) =
      DeleteCommentSuccess<T>;
}
