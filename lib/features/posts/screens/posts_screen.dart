import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reddit/core/resources/assets_manager.dart';
import 'package:reddit/core/resources/dummy_data.dart';
import 'package:reddit/features/posts/logic/cubit/post_cubit.dart';
import 'package:reddit/features/posts/logic/cubit/post_state.dart';
import 'package:reddit/features/posts/widgets/video_post_widget.dart';

class PostsScreen extends StatefulWidget {
  const PostsScreen({super.key});

  @override
  State<PostsScreen> createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen> {
  bool showControllers = true;
  bool isBottomSheetOpen = false;

  // double _viewHeight = 1.sh;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _buildBloc());
  }

  Widget _buildBloc() {
    return BlocConsumer<PostCubit, PostState>(
      listener: (context, state) {
        state.mapOrNull(
          changeVisibilityController: (state) {
            showControllers = state.visibility;
          },
          showCommentsBottomSheetSuccess: (state) {
            isBottomSheetOpen = state.visibility;
          },
        );
      },
      builder: (context, state) {
        return _buildBody();
      },
    );
  }

  Widget _buildBody() {
    return Stack(
      children: [
        _buildVideoListView(),
        _buildTopBar(),
      ],
    );
  }

  Widget _buildVideoListView() {
    return PageView.builder(
      itemCount: videoModelList.length,
      scrollDirection: Axis.vertical,
      physics: isBottomSheetOpen
          ? const NeverScrollableScrollPhysics()
          : const AlwaysScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return VideoPostWidget(
          model: videoModelList[index],
        );
      },
    );
  }

  Widget _buildTopBar() {
    return showControllers
        ? isBottomSheetOpen == false
            ? Padding(
                padding:
                    EdgeInsets.only(top: MediaQuery.of(context).padding.top),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    _buildArrowBack(),
                    _buildTitle(),
                    _buildMore(),
                  ],
                ),
              )
            : const SizedBox()
        : const SizedBox();
  }

  Widget _buildArrowBack() {
    return IconButton(
      onPressed: () {},
      icon: SvgPicture.asset(
        AssetsManager.backArrowIc,
        height: 32.w,
        width: 32.w,
      ),
    );
  }

  Widget _buildTitle() {
    return Row(
      children: [
        _buildAvatar(),
        10.horizontalSpace,
        Text('r/${categoryModel.name ?? ''}',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ))
      ],
    );
  }

  Widget _buildMore() {
    return IconButton(
      onPressed: () {},
      icon: SvgPicture.asset(
        AssetsManager.moreIc,
        height: 20.w,
        width: 20.w,
        colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
      ),
    );
  }

  Widget _buildAvatar() {
    return CircleAvatar(
      radius: 16.w,
      backgroundColor: Colors.white,
      backgroundImage: NetworkImage(categoryModel.image!),
    );
  }
}
