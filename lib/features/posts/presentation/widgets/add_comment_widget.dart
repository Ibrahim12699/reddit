import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reddit/core/resources/assets_manager.dart';
import 'package:reddit/core/resources/route_manager.dart';
import 'package:reddit/core/resources/strings_manger.dart';

class AddCommentWidget extends StatefulWidget {
  const AddCommentWidget({super.key});

  @override
  State<AddCommentWidget> createState() => _AddCommentWidgetState();
}

class _AddCommentWidgetState extends State<AddCommentWidget> {
  bool enableReplyButton = false;

  @override
  Widget build(BuildContext context) {
    return _buildBody();
  }

  Widget _buildBody() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4.h, vertical: 10.h),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColorLight,
        borderRadius: BorderRadius.circular(4.r),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _addCommentWidget(),
              if (!enableReplyButton) ...[
                _buildImageButton(),
              ]
            ],
          ),
          if (enableReplyButton) ...[
            _buildFocusLayout(),
          ]
        ],
      ),
    );
  }

  Widget _addCommentWidget() {
    return Expanded(
      child: Row(children: [
        Expanded(
          child: TextField(
            onTapOutside: (v) {
              FocusManager.instance.primaryFocus?.unfocus();
            },
            controller: RouteGenerator.postCubit.commentController,
            onChanged: _onCommentChanged,
            decoration: InputDecoration(
              hintText: StringsManger.addComment,
              hintStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: Colors.grey,
                  ),
              border: InputBorder.none,
            ),
          ),
        ),
      ]),
    );
  }

  Widget _buildImageButton() {
    return InkWell(
      onTap: () {},
      child: SvgPicture.asset(
        AssetsManager.imageIc,
        height: 20.h,
      ),
    );
  }

  Widget _buildReplyButton(context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.h),
      child: InkWell(
        onTap: () {
          RouteGenerator.postCubit.addComment();
          setState(() {
            enableReplyButton = false;
          });
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 20.w),
          decoration: BoxDecoration(
            color: const Color(0xffA6BBFB),
            borderRadius: BorderRadius.circular(50.r),
          ),
          child: Center(
            child: Text(
              StringsManger.reply,
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFocusLayout() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildImageButton(),
        _buildReplyButton(context),
      ],
    );
  }

  void _onCommentChanged(String value) {
    if (value.isNotEmpty) {
      setState(() {
        enableReplyButton = true;
      });
    } else {
      setState(() {
        enableReplyButton = false;
      });
    }
  }
}
