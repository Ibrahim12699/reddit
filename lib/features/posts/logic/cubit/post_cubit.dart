import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reddit/core/resources/app_contant.dart';
import 'package:reddit/features/posts/data/models/comment_filter_model.dart';
import 'package:reddit/features/posts/data/models/comment_model.dart';
import 'package:reddit/features/posts/data/models/video_model.dart';
import 'package:reddit/features/posts/data/models/vote_type.dart';
import 'package:reddit/features/posts/data/repositories/post_repo.dart';

import 'post_state.dart';

class PostCubit extends Cubit<PostState> {
  PostCubit(this.postRepo) : super(const PostState.idle());

  final PostRepo postRepo;
  VideoModel? currentVideoModel;
  CommentFilterModel? selectedFilter = filters[0];
  final TextEditingController commentController = TextEditingController();

  void changeVisibilityController(bool visibility) async {
    emit(PostState.changeVisibilityController(visibility));
  }

  int i = 0;

  void voteVideo({
    required VideoModel model,
    required VoteType newVote,
  }) async {
    try {
      var result = postRepo.voteVideo(
        model: model,
        newVote: newVote,
      );
      emit(PostState.voteVideoSuccess(result, i));
      i++;
    } catch (e) {
      log(e.toString());
      return;
    }
  }

  void showCommentsBottomSheet(bool visibility) {
    emit(PostState.showCommentsBottomSheetSuccess(visibility));
  }

  void voteComment({
    required CommentModel model,
    required VoteType newVote,
    required VoteType currentVote,
  }) {
    VoteType result = postRepo.voteComment(
      model: model,
      newVote: newVote,
      currentVote: currentVote,
    );

    model.voteType = result;
    if (result == VoteType.up) {
      model.voteCount = (model.voteCount ?? 0) + 1;
    } else if (result == VoteType.down && model.voteCount != 0) {
      model.voteCount = (model.voteCount ?? 0) - 1;
    } else {
      model.voteCount = (model.voteCount ?? 0);
    }

    emit(PostState.voteCommentSuccess(result, model));
  }

  void setCommentFilter(CommentFilterModel model) {
    if (selectedFilter != null) {
      selectedFilter?.selected = false;
    }
    selectedFilter = model;
    selectedFilter?.selected = true;

    emit(PostState.setCommentFilterSuccess(model));
  }

  void addComment() {
    try {
      var result = postRepo.addComment(
        text: commentController.text,
      );
      emit(PostState.addCommentSuccess(result));
      commentController.clear();
    } catch (e) {
      return;
    }
  }

  void deleteComment({required CommentModel model}) {
    try {
      var result = postRepo.deleteComment(
        model: model,
      );
      emit(PostState.deleteCommentSuccess(result));
    } catch (e) {
      return;
    }
  }
}
