import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reddit/core/resources/assets_manager.dart';
import 'package:reddit/core/resources/route_manager.dart';
import 'package:reddit/features/posts/data/models/video_model.dart';
import 'package:reddit/features/posts/data/models/vote_type.dart';
import 'package:reddit/features/posts/logic/cubit/post_cubit.dart';
import 'package:reddit/features/posts/logic/cubit/post_state.dart';
import 'package:reddit/features/posts/presentation/widgets/comments_bottom_sheet_widget.dart';
import 'package:video_player/video_player.dart';

class VideoPostWidget extends StatefulWidget {
  const VideoPostWidget({
    super.key,
    required this.model,
  });

  final VideoModel model;

  @override
  State<VideoPostWidget> createState() => _VideoPostWidgetState();
}

class _VideoPostWidgetState extends State<VideoPostWidget> {
  VideoModel? _model;
  late VideoPlayerController _controller;
  bool _isMuted = false;
  bool _isPlaying = false;
  double _currentPosition = 0.0;
  Duration _totalDuration = Duration.zero;
  Duration _remainingDuration = Duration.zero;
  bool showControllers = true;

  bool isBottomSheetOpen = false;
  double bodyHeight = 1.sh;
  double bottomSheetHeight = 0;

  bool isExpanded = false;

  bool collapseText = true;

  @override
  void initState() {
    _model = widget.model;
    RouteGenerator.postCubit.currentVideoModel = _model;
    _initVideoPlayer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _buildSlider());
  }

  Widget _buildSlider() {
    return SingleChildScrollView(
      child: Column(
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 250),
            height: bodyHeight,
            child: _buildBloc(),
          ),
          AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              height: bottomSheetHeight,
              child: CommentsBottomSheetWidget(
                isExpanded: isExpanded,
                height: bottomSheetHeight,
                onExpandTap: () {
                  setState(() {
                    if (isExpanded) {
                      bodyHeight = 0.4.sh;
                      bottomSheetHeight = 0.6.sh;
                      isExpanded = false;
                    } else {
                      bodyHeight = 0;
                      bottomSheetHeight = 1.sh;
                      isExpanded = true;
                    }
                  });
                },
              ))
        ],
      ),
    );
  }

  Widget _buildBloc() {
    return BlocConsumer<PostCubit, PostState>(
      listener: (context, state) {
        state.mapOrNull(
          changeVisibilityController: (state) {
            showControllers = state.visibility;
          },
          voteVideoSuccess: (state) {
            setState(() {
              _model = state.model;
            });
          },
          showCommentsBottomSheetSuccess: (state) {
            isBottomSheetOpen = state.visibility;
            if (state.visibility) {
              bodyHeight = 0.4.sh;
              bottomSheetHeight = 0.6.sh;
              showControllers = false;
            } else {
              bodyHeight = 1.0.sh;
              bottomSheetHeight = 0;
              showControllers = true;
            }
          },
        );
      },
      builder: (context, state) {
        return _buildBody();
      },
    );
  }

  Widget _buildBody() {
    return _controller.value.isInitialized
        ? Stack(
            children: [
              _buildVideoContent(),
              _buildControllerWidget(),
              _buildSmallController(),
            ],
          )
        : const Center(
            child: CircularProgressIndicator(),
          );
  }

  Widget _buildControllerWidget() {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      child: Visibility(
        visible: showControllers,
        child: Container(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top,
            bottom: MediaQuery.of(context).padding.bottom,
            left: 4.w,
            right: 4.w,
          ),
          child: ListView(
            shrinkWrap: true,
            primary: false,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.only(start: 10.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildAuthorWidget(),
                          4.verticalSpace,
                          _buildVideoTitle(),
                        ],
                      ),
                    ),
                  ),
                  _buildSideBar(),
                ],
              ),
              _buildVideoControllers(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSideBar() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        _buildLikeButtons(),
        2.verticalSpace,
        _buildCommentWidget(),
        2.verticalSpace,
        _buildShareButton(),
        20.verticalSpace,
      ],
    );
  }

  Widget _buildLikeButtons() {
    return Column(
      children: [
        _buildLikeButton(),
        _buildLikesCount(),
        _buildDislikeButton(),
      ],
    );
  }

  Widget _buildLikeButton() {
    return IconButton(
      onPressed: () {
        RouteGenerator.postCubit.voteVideo(
          model: _model!,
          newVote: VoteType.up,
        );
      },
      icon: SvgPicture.asset(
        _model?.voteType == VoteType.up
            ? AssetsManager.arrowUpFill
            : AssetsManager.arrowUp,
        width: 20.w,
        height: 20.h,
      ),
    );
  }

  Widget _buildLikesCount() {
    return Text(_model?.likesCount ?? '',
        style: Theme.of(context).textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.bold,
              height: 1.h,
            ));
  }

  Widget _buildDislikeButton() {
    return IconButton(
      onPressed: _onDislikePressed,
      icon: SvgPicture.asset(
        _model?.voteType == VoteType.down
            ? AssetsManager.arrowDownFill
            : AssetsManager.arrowDown,
        width: 20.w,
        height: 20.h,
      ),
    );
  }

  Widget _buildCommentWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        _buildCommentIcon(),
        _buildCommentCount(),
      ],
    );
  }

  Widget _buildCommentIcon() {
    return IconButton(
      onPressed: _onCommentPressed,
      icon: SvgPicture.asset(
        AssetsManager.comment,
        width: 20.w,
        height: 20.h,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildCommentCount() {
    return Text(_model?.commentsCount ?? '',
        style: Theme.of(context).textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.bold,
              height: 1.h,
            ));
  }

  Widget _buildShareButton() {
    return IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          AssetsManager.shareIc,
          width: 20.w,
          height: 20.w,
        ));
  }

  Widget _buildAuthorWidget() {
    return Row(
      children: [
        _buildAvatar(),
        10.horizontalSpace,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              _model?.author?.name ?? '',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildAvatar() {
    return Container(
      height: 28.w,
      width: 28.w,
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey,
      ),
      child: Image.network(
        _model?.author?.avatar ?? '',
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildVideoTitle() {
    return Container(
      decoration: BoxDecoration(
        boxShadow: collapseText
            ? null
            : [
                BoxShadow(
                  color: Colors.black.withOpacity(0.15),
                  blurRadius: 2,
                  spreadRadius: 1,
                ),
              ],
      ),
      child: Row(
        children: [
          Flexible(
            child: RichText(
              text: TextSpan(
                text: _model?.title ?? '',
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    setState(() {
                      collapseText = !collapseText;
                    });
                  },
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              maxLines: collapseText ? 2 : 100,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildVideoControllers() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildPlayButton(),
        _buildVideoBar(),
        10.horizontalSpace,
        _buildMuteButton(),
      ],
    );
  }

  Widget _buildPlayButton() {
    return IconButton(
      onPressed: _togglePlayPause,
      icon: SvgPicture.asset(
        _isPlaying ? AssetsManager.pauseIc : AssetsManager.playIc,
        height: 18.w,
        width: 18.w,
      ),
    );
  }

  Widget _buildVideoBar() {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: Slider(
              value: _currentPosition,
              min: 0.0,
              max: _controller.value.duration.inSeconds.toDouble(),
              onChanged: (value) {
                setState(() {
                  _currentPosition = value;
                });
              },
              onChangeEnd: (value) {
                _seekTo(value);
              },
            ),
          ),
          _buildTimer(),
        ],
      ),
    );
  }

  Widget _buildTimer() {
    return Text(
      '${_remainingDuration.inMinutes}:${(_remainingDuration.inSeconds % 60).toString().padLeft(2, '0')}',
      style: Theme.of(context).textTheme.titleSmall?.copyWith(
          // fontWeight: FontWeight.bold,
          ),
    );
  }

  Widget _buildMuteButton() {
    return IconButton(
      onPressed: _toggleMute,
      icon: SvgPicture.asset(
        _isMuted ? AssetsManager.muteIc : AssetsManager.volumeUpIc,
        width: 22.w,
        height: 22.w,
      ),
    );
  }

  Widget _buildVideoContent() {
    return GestureDetector(
        onTap: () {
          if (isBottomSheetOpen) {
            BlocProvider.of<PostCubit>(context).showCommentsBottomSheet(false);
          } else {
            BlocProvider.of<PostCubit>(context)
                .changeVisibilityController(!showControllers);
          }
        },
        child: Center(
          child: AspectRatio(
            aspectRatio: _controller.value.aspectRatio,
            child: VideoPlayer(_controller),
          ),
        ));
  }

  Widget _buildSmallController() {
    return Visibility(
      visible: isBottomSheetOpen,
      child: Positioned(
        bottom: 12.h,
        right: 12.h,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            _buildPlayButtonCircle(),
            10.horizontalSpace,
            _buildMuteButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildPlayButtonCircle() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: _togglePlayPause,
        icon: SvgPicture.asset(
          _isPlaying ? AssetsManager.pauseIc : AssetsManager.playIc,
          height: 18.w,
          width: 18.w,
        ),
      ),
    );
  }

  void _togglePlayPause() {
    if (_isPlaying) {
      _controller.pause();
    } else {
      _controller.play();
    }
  }

  // Function to seek to a specific position
  void _seekTo(double position) {
    _controller.seekTo(Duration(seconds: position.toInt()));
  }

  void _toggleMute() {
    if (_isMuted) {
      _controller.setVolume(1.0); // Unmute
    } else {
      _controller.setVolume(0.0); // Mute
    }
  }

  void _initVideoPlayer() async {
    try {
      _controller = VideoPlayerController.asset(_model?.videoUrl ?? '');
      _controller.initialize().then((value) {
        _totalDuration = _controller.value.duration;
        _remainingDuration = _totalDuration;
      });
      _controller.setLooping(true);
      _controller.play();

      _controller.addListener(() {
        if (_controller.value.isPlaying) {
          setState(() {
            _isPlaying = true;
            _currentPosition = _controller.value.position.inSeconds.toDouble();
            _remainingDuration = _totalDuration - _controller.value.position;
          });
        } else {
          setState(() {
            _isPlaying = false;
            _currentPosition = _controller.value.position.inSeconds.toDouble();
          });
        }

        setState(() => _isMuted = _controller.value.volume == 0.0);
      });
    } catch (e, s) {
      log('Error initializing video player: $e , $s');
    }
  }

  void _onDislikePressed() {
    RouteGenerator.postCubit.voteVideo(
      model: _model!,
      newVote: VoteType.down,
    );
  }

  void _onCommentPressed() {
    RouteGenerator.postCubit.currentVideoModel = _model;
    RouteGenerator.postCubit.showCommentsBottomSheet(true);
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }
}
