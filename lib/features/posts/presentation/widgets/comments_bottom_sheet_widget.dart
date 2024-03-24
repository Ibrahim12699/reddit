import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reddit/core/resources/assets_manager.dart';
import 'package:reddit/core/resources/dummy_data.dart';
import 'package:reddit/core/resources/route_manager.dart';
import 'package:reddit/features/posts/data/models/video_model.dart';
import 'package:reddit/features/posts/logic/cubit/post_cubit.dart';
import 'package:reddit/features/posts/logic/cubit/post_state.dart';
import 'package:reddit/features/posts/presentation/widgets/add_comment_widget.dart';
import 'package:reddit/features/posts/presentation/widgets/comment_filter_bottom_sheet.dart';
import 'package:reddit/features/posts/presentation/widgets/comment_item_widget.dart';

class CommentsBottomSheetWidget extends StatefulWidget {
  const CommentsBottomSheetWidget({
    super.key,
    required this.onExpandTap,
    required this.isExpanded,
    required this.height,
  });

  final Function onExpandTap;
  final bool isExpanded;
  final double height;

  @override
  State<CommentsBottomSheetWidget> createState() =>
      _CommentsBottomSheetWidgetState();
}

class _CommentsBottomSheetWidgetState extends State<CommentsBottomSheetWidget> {
  VideoModel? _model;

  @override
  void initState() {
    _model = RouteGenerator.postCubit.currentVideoModel;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _buildBloc(),
        _buildNextButton(),
      ],
      // floatingActionButton: _buildNextButton(),
      // floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
  }

  Widget _buildBloc() {
    return BlocConsumer<PostCubit, PostState>(
      listener: (context, state) {
        state.mapOrNull(
          voteCommentSuccess: (state) {},
          setCommentFilterSuccess: (state) {
            comments = comments.reversed.toList();
            Navigator.pop(context);
          },
          addCommentSuccess: (state) {
            comments.insert(0, state.model);
          },
          deleteCommentSuccess: (state) {
            comments.removeWhere((element) => element.id == state.model.id);
            Navigator.pop(context);
            Navigator.pop(context);
          },
        );
      },
      builder: (context, state) {
        return _buildBody();
      },
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: SizedBox(
        height: widget.height,
        child: Column(
          children: [
            SizedBox(
              height:
                  widget.isExpanded ? MediaQuery.of(context).padding.top : 0,
            ),
            _buildDragButton(),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                primary: true,
                children: [
                  _buildAuthorData(),
                  _buildFiller(),
                  _buildCommentsList(),
                ],
              ),
            ),
            const AddCommentWidget(),
          ],
        ),
      ),
    );
  }

  Widget _buildDragButton() {
    return InkWell(
      onTap: () => widget.onExpandTap(),
      child: Container(
        width: 1.sw,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColorDark,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 20.w),
              height: 5.h,
              width: 50.w,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.3),
                borderRadius: BorderRadius.circular(20.r),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAuthorData() {
    return Container(
      color: Theme.of(context).cardColor,
      padding: EdgeInsetsDirectional.only(
        bottom: 20.h,
        start: 20.w,
        end: 20.w,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildAuthorDataHeader(),
          2.verticalSpace,
          _buildVideoTitle(),
        ],
      ),
    );
  }

  Widget _buildVideoTitle() {
    return Text(
      _model?.title ?? "",
      style: Theme.of(context).textTheme.titleMedium,
    );
  }

  Widget _buildAuthorDataHeader() {
    return Row(
      children: [
        CircleAvatar(
          radius: 12.r,
          backgroundImage: NetworkImage(
            _model?.author?.avatar ?? "",
          ),
        ),
        10.horizontalSpace,
        Text(
          _model?.author?.name ?? "",
          style: Theme.of(context).textTheme.titleSmall?.copyWith(),
        ),
      ],
    );
  }

  Widget _buildFiller() {
    return InkWell(
      onTap: () {
        showBottomSheet(
            context: context,
            builder: (context) => const CommentFilterBottomSheet());
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 16.h,
        ),
        child: Row(
          children: [
            _buildFilterIcon(),
            10.horizontalSpace,
            _buildFilterName(),
            4.horizontalSpace,
            _buildArrowIcon(),
          ],
        ),
        // color: Theme.of(context).cardColor,
      ),
    );
  }

  Widget _buildFilterIcon() {
    return SvgPicture.asset(RouteGenerator.postCubit.selectedFilter?.icon ?? "",
        height: 16.h);
  }

  Widget _buildFilterName() {
    return Text(
      RouteGenerator.postCubit.selectedFilter?.name ?? "",
      style: Theme.of(context).textTheme.titleSmall?.copyWith(),
    );
  }

  Widget _buildArrowIcon() {
    return SvgPicture.asset(
      AssetsManager.downArrowIc,
      height: 16,
    );
  }

  Widget _buildCommentsList() {
    return ListView.separated(
      padding: EdgeInsets.only(bottom: 50.h),
      shrinkWrap: true,
      primary: false,
      itemCount: comments.length,
      itemBuilder: (context, index) {
        return CommentItemWidget(model: comments[index]);
      },
      separatorBuilder: (BuildContext context, int index) {
        return 10.verticalSpace;
      },
    );
  }

  Widget _buildNextButton() {
    return Positioned(
      bottom: 100.h,
      right: 16.w,
      child: InkWell(
        onTap: () {},
        child: Container(
            padding: EdgeInsets.all(
              12.r,
            ),
            decoration: BoxDecoration(
              color: Colors.grey[800],
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(
              AssetsManager.downArrowIc,
              height: 20.h,
            )),
      ),
    );
  }
}
