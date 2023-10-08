import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reddit/core/resources/assets_manager.dart';
import 'package:reddit/core/resources/route_manager.dart';
import 'package:reddit/core/resources/strings_manger.dart';
import 'package:reddit/features/posts/data/models/comment_model.dart';
import 'package:reddit/features/posts/data/models/vote_type.dart';
import 'package:reddit/features/posts/widgets/comment_options_bottom_sheet.dart';

class CommentItemWidget extends StatefulWidget {
  const CommentItemWidget({super.key, required this.model});

  final CommentModel model;

  @override
  State<CommentItemWidget> createState() => _CommentItemWidgetState();
}

class _CommentItemWidgetState extends State<CommentItemWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _buildComment(widget.model);
  }

  _buildComment(CommentModel model) {
    return Column(
      children: [
        _buildReplay(model),
      ],
    );
  }

  _buildReplay(CommentModel model) {
    return Column(
      children: [
        _buildBody(model),
        if (model.replay != null)
          Container(
            color: Theme.of(context).cardColor,
            padding: EdgeInsetsDirectional.only(start: 16.w),
            child: IntrinsicHeight(
              child: Row(
                children: [
                  _buildDivider(),
                  Expanded(child: _buildReplay(model.replay!)),
                ],
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildDivider() {
    return Container(
      margin: EdgeInsetsDirectional.only(bottom: 8.w),
      width: 0.5.w,
      color: Colors.grey,
    );
  }

  Widget _buildBody(CommentModel model) {
    return Container(
      color: Theme.of(context).cardColor,
      padding: EdgeInsetsDirectional.only(
          top: 8.h, bottom: 4.h, end: 4.w, start: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTopRow(model),
          2.verticalSpace,
          _buildCommentContent(model),
          _buildButtonsRow(model),
        ],
      ),
    );
  }

  Widget _buildCommentContent(CommentModel model) {
    return Padding(
      padding: EdgeInsetsDirectional.only(end: 8.w),
      child: Text(
        model.comment ?? '',
        style: Theme.of(context).textTheme.titleSmall,
      ),
    );
  }

  Widget _buildTopRow(CommentModel model) {
    return Row(
      children: [
        _buildAvatar(model),
        8.horizontalSpace,
        _buildAuthorName(model),
        8.horizontalSpace,
        _buildCommentTime(model),
      ],
    );
  }

  Widget _buildAvatar(CommentModel model) {
    return Container(
      width: 24.w,
      height: 24.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: NetworkImage(model.author?.avatar ?? ''),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildAuthorName(CommentModel model) {
    return Text(
      model.author?.name ?? '',
      style: Theme.of(context).textTheme.titleSmall?.copyWith(
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
    );
  }

  Widget _buildCommentTime(CommentModel model) {
    return Text(
      model.createdAt ?? '',
      style: Theme.of(context).textTheme.titleSmall?.copyWith(
            color: Colors.grey,
          ),
    );
  }

  Widget _buildButtonsRow(CommentModel model) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        _buildMoreButton(model),
        12.horizontalSpace,
        _buildReplyButton(),
        12.horizontalSpace,
        _buildUpVoteButton(model),
        _buildVoteCountText(model),
        _buildDownVoteButton(model),
      ],
    );
  }

  Widget _buildMoreButton(CommentModel model) {
    return IconButton(
      onPressed: () {
        showBottomSheet(
            context: context,
            builder: (context) => CommentOptionsBottomSheet(model: model));
      },
      icon: SvgPicture.asset(
        AssetsManager.moreIc,
        width: 16.w,
        height: 16.h,
      ),
    );
  }

  Widget _buildReplyButton() {
    return InkWell(
      onTap: () {},
      child: Row(
        children: [
          SvgPicture.asset(
            AssetsManager.curveArrow,
            width: 16.w,
            height: 16.h,
          ),
          6.horizontalSpace,
          Text(
            StringsManger.replySmall,
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  color: Colors.grey,
                ),
          ),
        ],
      ),
    );
  }

  Widget _buildUpVoteButton(CommentModel model) {
    return IconButton(
      onPressed: () {
        RouteGenerator.postCubit.voteComment(
          model: model,
          currentVote: model.voteType!,
          newVote: VoteType.up,
        );
      },
      icon: model.voteType == VoteType.up
          ? SvgPicture.asset(
              AssetsManager.arrowUpFill,
              width: 16.w,
              height: 16.h,
            )
          : SvgPicture.asset(
              AssetsManager.arrowUp,
              width: 16.w,
              height: 16.h,
              colorFilter: const ColorFilter.mode(Colors.grey, BlendMode.srcIn),
            ),
    );
  }

  Widget _buildVoteCountText(CommentModel model) {
    return Text(
      "${model.voteCount ?? 0}",
      style: Theme.of(context).textTheme.titleSmall?.copyWith(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
    );
  }

  Widget _buildDownVoteButton(CommentModel model) {
    return IconButton(
      onPressed: () {
        RouteGenerator.postCubit.voteComment(
          model: model,
          currentVote: model.voteType!,
          newVote: VoteType.down,
        );
      },
      icon: model.voteType == VoteType.down
          ? SvgPicture.asset(
              AssetsManager.arrowDownFill,
              width: 16.w,
              height: 16.h,
            )
          : SvgPicture.asset(
              AssetsManager.arrowDown,
              width: 16.w,
              height: 16.h,
              colorFilter: const ColorFilter.mode(Colors.grey, BlendMode.srcIn),
            ),
    );
  }
}
