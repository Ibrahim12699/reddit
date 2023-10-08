import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reddit/core/resources/app_contant.dart';
import 'package:reddit/core/resources/route_manager.dart';
import 'package:reddit/core/resources/strings_manger.dart';
import 'package:reddit/features/posts/data/models/comment_filter_model.dart';

class CommentFilterBottomSheet extends StatefulWidget {
  const CommentFilterBottomSheet({super.key});

  @override
  State<CommentFilterBottomSheet> createState() =>
      _CommentFilterBottomSheetState();
}

class _CommentFilterBottomSheetState extends State<CommentFilterBottomSheet> {
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
          Text(StringsManger.sortBy,
              style: Theme.of(context).textTheme.titleMedium),
          20.verticalSpace,
          _buildDivider(),
          // _buildDragHandle(),
          20.verticalSpace,
          _buildFilterList(), 20.verticalSpace,
          _buildCloseButton(), 20.verticalSpace,
        ],
      ),
    );
  }

  Widget _buildFilterList() {
    return ListView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      primary: false,
      itemCount: filters.length,
      itemBuilder: (context, index) {
        return _buildItem(model: filters[index]);
      },
    );
  }

  _buildItem({required CommentFilterModel model}) {
    return InkWell(
        onTap: () {
          RouteGenerator.postCubit.setCommentFilter(model);
        },
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

  _buildDivider() {
    return Container(
      height: 1,
      width: 1.sw,
      color: Colors.grey[300],
    );
  }

  _buildCloseButton() {
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

  _buildIcon(CommentFilterModel model) {
    return SvgPicture.asset(
      model.icon ?? '',
      height: 20.w,
      width: 20.w,
      colorFilter: ColorFilter.mode(
          model.selected == true ? Colors.white : Colors.grey[400]!,
          BlendMode.srcIn),
    );
  }

  _buildTitle(CommentFilterModel model) {
    return Text(model.name ?? '',
        style: model.selected == true
            ? Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                )
            : Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Colors.grey,
                ));
  }
}
