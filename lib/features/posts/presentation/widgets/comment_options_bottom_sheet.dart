import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reddit/core/resources/app_contant.dart';
import 'package:reddit/core/resources/strings_manger.dart';
import 'package:reddit/features/posts/data/models/comment_model.dart';
import 'package:reddit/features/posts/data/models/comment_option_model.dart';
import 'package:reddit/features/posts/presentation/widgets/delete_comment_dialog.dart';

class CommentOptionsBottomSheet extends StatefulWidget {
  const CommentOptionsBottomSheet({super.key, required this.model});

  final CommentModel model;

  @override
  State<CommentOptionsBottomSheet> createState() =>
      _CommentOptionsBottomSheetState();
}

class _CommentOptionsBottomSheetState extends State<CommentOptionsBottomSheet> {
  @override
  void initState() {
    if (widget.model.author?.id != userId) {
      options.removeWhere((element) => element.id == 6 || element.id == 7);
    } else {
      if (options.length < 7) {
        options.addAll(myOptions);
      }
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _buildBody();
  }

  Widget _buildBody() {
    return Container(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
        left: 24.w,
        right: 24.w,
      ),
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColorLight,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          20.verticalSpace,
          _buildFilterList(),
          20.verticalSpace,
          _buildCloseButton(),
          20.verticalSpace,
        ],
      ),
    );
  }

  Widget _buildFilterList() {
    return ListView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      primary: false,
      itemCount: options.length,
      itemBuilder: (context, index) {
        return _buildItem(model: options[index]);
      },
    );
  }

  Widget _buildItem({required CommentOptionModel model}) {
    return InkWell(
        onTap: () => _onItemTap(model),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          child: Row(
            children: [
              _buildIcon(model),
              const SizedBox(width: 20),
              _buildTitle(model),
            ],
          ),
        ));
  }

  Widget _buildCloseButton() {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.h),
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.1),
            borderRadius: BorderRadius.circular(
              24.r,
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(StringsManger.close,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    )),
          ],
        ),
      ),
    );
  }

  Widget _buildIcon(CommentOptionModel model) {
    return SvgPicture.asset(
      model.icon ?? '',
      height: 20.w,
      width: 20.w,
      colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
    );
  }

  Widget _buildTitle(CommentOptionModel model) {
    return Text(model.name ?? '',
        style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Colors.white,
            ));
  }

  void _onItemTap(CommentOptionModel model) {
    switch (model.id) {
      case 7:
        showDialog(
            context: context,
            builder: (context) => DeleteCommentDialog(model: widget.model));
        break;
    }
  }
}
