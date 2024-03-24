import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reddit/core/resources/route_manager.dart';
import 'package:reddit/core/resources/strings_manger.dart';
import 'package:reddit/features/posts/data/models/comment_model.dart';

class DeleteCommentDialog extends StatelessWidget {
  const DeleteCommentDialog({super.key, required this.model});

  final CommentModel model;

  @override
  Widget build(BuildContext context) {
    return _buildBody(context);
  }

  Widget _buildBody(context) {
    return Dialog(
      insetPadding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 24.w,
          vertical: 24.h,
        ),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColorLight,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTitle(context),
            16.verticalSpace,
            _buildDescription(context),
            14.verticalSpace,
            Row(
              children: [
                _buildCancelButton(context),
                4.horizontalSpace,
                _buildDeleteButton(context),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildTitle(context) {
    return Text(
      StringsManger.areYouSure,
      style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
    );
  }

  Widget _buildDescription(context) {
    return Text(
      StringsManger.deleteCommentDescription,
      style: Theme.of(context).textTheme.titleSmall,
    );
  }

  Widget _buildCancelButton(context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.r),
            color: Colors.white.withOpacity(0.1),
          ),
          child: Center(
              child: Text(
            StringsManger.cancel,
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          )),
        ),
      ),
    );
  }

  Widget _buildDeleteButton(context) {
    return Expanded(
        child: InkWell(
      onTap: () {
        RouteGenerator.postCubit.deleteComment(model: model);
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.h),
        decoration: BoxDecoration(
          color: const Color(0xffff1348),
          borderRadius: BorderRadius.circular(50.r),
        ),
        child: Center(
          child: Text(
            StringsManger.delete,
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
      ),
    ));
  }
}
