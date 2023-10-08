// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PostState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(bool visibility) changeVisibilityController,
    required TResult Function(VideoModel model, int i) voteVideoSuccess,
    required TResult Function(bool visibility) showCommentsBottomSheetSuccess,
    required TResult Function(VoteType voteType, CommentModel model)
        voteCommentSuccess,
    required TResult Function(CommentFilterModel model) setCommentFilterSuccess,
    required TResult Function(CommentModel model) addCommentSuccess,
    required TResult Function(CommentModel model) deleteCommentSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(bool visibility)? changeVisibilityController,
    TResult? Function(VideoModel model, int i)? voteVideoSuccess,
    TResult? Function(bool visibility)? showCommentsBottomSheetSuccess,
    TResult? Function(VoteType voteType, CommentModel model)?
        voteCommentSuccess,
    TResult? Function(CommentFilterModel model)? setCommentFilterSuccess,
    TResult? Function(CommentModel model)? addCommentSuccess,
    TResult? Function(CommentModel model)? deleteCommentSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(bool visibility)? changeVisibilityController,
    TResult Function(VideoModel model, int i)? voteVideoSuccess,
    TResult Function(bool visibility)? showCommentsBottomSheetSuccess,
    TResult Function(VoteType voteType, CommentModel model)? voteCommentSuccess,
    TResult Function(CommentFilterModel model)? setCommentFilterSuccess,
    TResult Function(CommentModel model)? addCommentSuccess,
    TResult Function(CommentModel model)? deleteCommentSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) idle,
    required TResult Function(ChangeVisibilityController<T> value)
        changeVisibilityController,
    required TResult Function(VoteVideoSuccess<T> value) voteVideoSuccess,
    required TResult Function(ShowCommentsBottomSheetSuccess<T> value)
        showCommentsBottomSheetSuccess,
    required TResult Function(VoteCommentSuccess<T> value) voteCommentSuccess,
    required TResult Function(SetCommentFilterSuccess<T> value)
        setCommentFilterSuccess,
    required TResult Function(AddCommentSuccess<T> value) addCommentSuccess,
    required TResult Function(DeleteCommentSuccess<T> value)
        deleteCommentSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle<T> value)? idle,
    TResult? Function(ChangeVisibilityController<T> value)?
        changeVisibilityController,
    TResult? Function(VoteVideoSuccess<T> value)? voteVideoSuccess,
    TResult? Function(ShowCommentsBottomSheetSuccess<T> value)?
        showCommentsBottomSheetSuccess,
    TResult? Function(VoteCommentSuccess<T> value)? voteCommentSuccess,
    TResult? Function(SetCommentFilterSuccess<T> value)?
        setCommentFilterSuccess,
    TResult? Function(AddCommentSuccess<T> value)? addCommentSuccess,
    TResult? Function(DeleteCommentSuccess<T> value)? deleteCommentSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(ChangeVisibilityController<T> value)?
        changeVisibilityController,
    TResult Function(VoteVideoSuccess<T> value)? voteVideoSuccess,
    TResult Function(ShowCommentsBottomSheetSuccess<T> value)?
        showCommentsBottomSheetSuccess,
    TResult Function(VoteCommentSuccess<T> value)? voteCommentSuccess,
    TResult Function(SetCommentFilterSuccess<T> value)? setCommentFilterSuccess,
    TResult Function(AddCommentSuccess<T> value)? addCommentSuccess,
    TResult Function(DeleteCommentSuccess<T> value)? deleteCommentSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostStateCopyWith<T, $Res> {
  factory $PostStateCopyWith(
          PostState<T> value, $Res Function(PostState<T>) then) =
      _$PostStateCopyWithImpl<T, $Res, PostState<T>>;
}

/// @nodoc
class _$PostStateCopyWithImpl<T, $Res, $Val extends PostState<T>>
    implements $PostStateCopyWith<T, $Res> {
  _$PostStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$IdleImplCopyWith<T, $Res> {
  factory _$$IdleImplCopyWith(
          _$IdleImpl<T> value, $Res Function(_$IdleImpl<T>) then) =
      __$$IdleImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$IdleImplCopyWithImpl<T, $Res>
    extends _$PostStateCopyWithImpl<T, $Res, _$IdleImpl<T>>
    implements _$$IdleImplCopyWith<T, $Res> {
  __$$IdleImplCopyWithImpl(
      _$IdleImpl<T> _value, $Res Function(_$IdleImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$IdleImpl<T> implements Idle<T> {
  const _$IdleImpl();

  @override
  String toString() {
    return 'PostState<$T>.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IdleImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(bool visibility) changeVisibilityController,
    required TResult Function(VideoModel model, int i) voteVideoSuccess,
    required TResult Function(bool visibility) showCommentsBottomSheetSuccess,
    required TResult Function(VoteType voteType, CommentModel model)
        voteCommentSuccess,
    required TResult Function(CommentFilterModel model) setCommentFilterSuccess,
    required TResult Function(CommentModel model) addCommentSuccess,
    required TResult Function(CommentModel model) deleteCommentSuccess,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(bool visibility)? changeVisibilityController,
    TResult? Function(VideoModel model, int i)? voteVideoSuccess,
    TResult? Function(bool visibility)? showCommentsBottomSheetSuccess,
    TResult? Function(VoteType voteType, CommentModel model)?
        voteCommentSuccess,
    TResult? Function(CommentFilterModel model)? setCommentFilterSuccess,
    TResult? Function(CommentModel model)? addCommentSuccess,
    TResult? Function(CommentModel model)? deleteCommentSuccess,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(bool visibility)? changeVisibilityController,
    TResult Function(VideoModel model, int i)? voteVideoSuccess,
    TResult Function(bool visibility)? showCommentsBottomSheetSuccess,
    TResult Function(VoteType voteType, CommentModel model)? voteCommentSuccess,
    TResult Function(CommentFilterModel model)? setCommentFilterSuccess,
    TResult Function(CommentModel model)? addCommentSuccess,
    TResult Function(CommentModel model)? deleteCommentSuccess,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) idle,
    required TResult Function(ChangeVisibilityController<T> value)
        changeVisibilityController,
    required TResult Function(VoteVideoSuccess<T> value) voteVideoSuccess,
    required TResult Function(ShowCommentsBottomSheetSuccess<T> value)
        showCommentsBottomSheetSuccess,
    required TResult Function(VoteCommentSuccess<T> value) voteCommentSuccess,
    required TResult Function(SetCommentFilterSuccess<T> value)
        setCommentFilterSuccess,
    required TResult Function(AddCommentSuccess<T> value) addCommentSuccess,
    required TResult Function(DeleteCommentSuccess<T> value)
        deleteCommentSuccess,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle<T> value)? idle,
    TResult? Function(ChangeVisibilityController<T> value)?
        changeVisibilityController,
    TResult? Function(VoteVideoSuccess<T> value)? voteVideoSuccess,
    TResult? Function(ShowCommentsBottomSheetSuccess<T> value)?
        showCommentsBottomSheetSuccess,
    TResult? Function(VoteCommentSuccess<T> value)? voteCommentSuccess,
    TResult? Function(SetCommentFilterSuccess<T> value)?
        setCommentFilterSuccess,
    TResult? Function(AddCommentSuccess<T> value)? addCommentSuccess,
    TResult? Function(DeleteCommentSuccess<T> value)? deleteCommentSuccess,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(ChangeVisibilityController<T> value)?
        changeVisibilityController,
    TResult Function(VoteVideoSuccess<T> value)? voteVideoSuccess,
    TResult Function(ShowCommentsBottomSheetSuccess<T> value)?
        showCommentsBottomSheetSuccess,
    TResult Function(VoteCommentSuccess<T> value)? voteCommentSuccess,
    TResult Function(SetCommentFilterSuccess<T> value)? setCommentFilterSuccess,
    TResult Function(AddCommentSuccess<T> value)? addCommentSuccess,
    TResult Function(DeleteCommentSuccess<T> value)? deleteCommentSuccess,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class Idle<T> implements PostState<T> {
  const factory Idle() = _$IdleImpl<T>;
}

/// @nodoc
abstract class _$$ChangeVisibilityControllerImplCopyWith<T, $Res> {
  factory _$$ChangeVisibilityControllerImplCopyWith(
          _$ChangeVisibilityControllerImpl<T> value,
          $Res Function(_$ChangeVisibilityControllerImpl<T>) then) =
      __$$ChangeVisibilityControllerImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({bool visibility});
}

/// @nodoc
class __$$ChangeVisibilityControllerImplCopyWithImpl<T, $Res>
    extends _$PostStateCopyWithImpl<T, $Res,
        _$ChangeVisibilityControllerImpl<T>>
    implements _$$ChangeVisibilityControllerImplCopyWith<T, $Res> {
  __$$ChangeVisibilityControllerImplCopyWithImpl(
      _$ChangeVisibilityControllerImpl<T> _value,
      $Res Function(_$ChangeVisibilityControllerImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visibility = null,
  }) {
    return _then(_$ChangeVisibilityControllerImpl<T>(
      null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ChangeVisibilityControllerImpl<T>
    implements ChangeVisibilityController<T> {
  const _$ChangeVisibilityControllerImpl(this.visibility);

  @override
  final bool visibility;

  @override
  String toString() {
    return 'PostState<$T>.changeVisibilityController(visibility: $visibility)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeVisibilityControllerImpl<T> &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility));
  }

  @override
  int get hashCode => Object.hash(runtimeType, visibility);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeVisibilityControllerImplCopyWith<T,
          _$ChangeVisibilityControllerImpl<T>>
      get copyWith => __$$ChangeVisibilityControllerImplCopyWithImpl<T,
          _$ChangeVisibilityControllerImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(bool visibility) changeVisibilityController,
    required TResult Function(VideoModel model, int i) voteVideoSuccess,
    required TResult Function(bool visibility) showCommentsBottomSheetSuccess,
    required TResult Function(VoteType voteType, CommentModel model)
        voteCommentSuccess,
    required TResult Function(CommentFilterModel model) setCommentFilterSuccess,
    required TResult Function(CommentModel model) addCommentSuccess,
    required TResult Function(CommentModel model) deleteCommentSuccess,
  }) {
    return changeVisibilityController(visibility);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(bool visibility)? changeVisibilityController,
    TResult? Function(VideoModel model, int i)? voteVideoSuccess,
    TResult? Function(bool visibility)? showCommentsBottomSheetSuccess,
    TResult? Function(VoteType voteType, CommentModel model)?
        voteCommentSuccess,
    TResult? Function(CommentFilterModel model)? setCommentFilterSuccess,
    TResult? Function(CommentModel model)? addCommentSuccess,
    TResult? Function(CommentModel model)? deleteCommentSuccess,
  }) {
    return changeVisibilityController?.call(visibility);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(bool visibility)? changeVisibilityController,
    TResult Function(VideoModel model, int i)? voteVideoSuccess,
    TResult Function(bool visibility)? showCommentsBottomSheetSuccess,
    TResult Function(VoteType voteType, CommentModel model)? voteCommentSuccess,
    TResult Function(CommentFilterModel model)? setCommentFilterSuccess,
    TResult Function(CommentModel model)? addCommentSuccess,
    TResult Function(CommentModel model)? deleteCommentSuccess,
    required TResult orElse(),
  }) {
    if (changeVisibilityController != null) {
      return changeVisibilityController(visibility);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) idle,
    required TResult Function(ChangeVisibilityController<T> value)
        changeVisibilityController,
    required TResult Function(VoteVideoSuccess<T> value) voteVideoSuccess,
    required TResult Function(ShowCommentsBottomSheetSuccess<T> value)
        showCommentsBottomSheetSuccess,
    required TResult Function(VoteCommentSuccess<T> value) voteCommentSuccess,
    required TResult Function(SetCommentFilterSuccess<T> value)
        setCommentFilterSuccess,
    required TResult Function(AddCommentSuccess<T> value) addCommentSuccess,
    required TResult Function(DeleteCommentSuccess<T> value)
        deleteCommentSuccess,
  }) {
    return changeVisibilityController(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle<T> value)? idle,
    TResult? Function(ChangeVisibilityController<T> value)?
        changeVisibilityController,
    TResult? Function(VoteVideoSuccess<T> value)? voteVideoSuccess,
    TResult? Function(ShowCommentsBottomSheetSuccess<T> value)?
        showCommentsBottomSheetSuccess,
    TResult? Function(VoteCommentSuccess<T> value)? voteCommentSuccess,
    TResult? Function(SetCommentFilterSuccess<T> value)?
        setCommentFilterSuccess,
    TResult? Function(AddCommentSuccess<T> value)? addCommentSuccess,
    TResult? Function(DeleteCommentSuccess<T> value)? deleteCommentSuccess,
  }) {
    return changeVisibilityController?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(ChangeVisibilityController<T> value)?
        changeVisibilityController,
    TResult Function(VoteVideoSuccess<T> value)? voteVideoSuccess,
    TResult Function(ShowCommentsBottomSheetSuccess<T> value)?
        showCommentsBottomSheetSuccess,
    TResult Function(VoteCommentSuccess<T> value)? voteCommentSuccess,
    TResult Function(SetCommentFilterSuccess<T> value)? setCommentFilterSuccess,
    TResult Function(AddCommentSuccess<T> value)? addCommentSuccess,
    TResult Function(DeleteCommentSuccess<T> value)? deleteCommentSuccess,
    required TResult orElse(),
  }) {
    if (changeVisibilityController != null) {
      return changeVisibilityController(this);
    }
    return orElse();
  }
}

abstract class ChangeVisibilityController<T> implements PostState<T> {
  const factory ChangeVisibilityController(final bool visibility) =
      _$ChangeVisibilityControllerImpl<T>;

  bool get visibility;
  @JsonKey(ignore: true)
  _$$ChangeVisibilityControllerImplCopyWith<T,
          _$ChangeVisibilityControllerImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VoteVideoSuccessImplCopyWith<T, $Res> {
  factory _$$VoteVideoSuccessImplCopyWith(_$VoteVideoSuccessImpl<T> value,
          $Res Function(_$VoteVideoSuccessImpl<T>) then) =
      __$$VoteVideoSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({VideoModel model, int i});
}

/// @nodoc
class __$$VoteVideoSuccessImplCopyWithImpl<T, $Res>
    extends _$PostStateCopyWithImpl<T, $Res, _$VoteVideoSuccessImpl<T>>
    implements _$$VoteVideoSuccessImplCopyWith<T, $Res> {
  __$$VoteVideoSuccessImplCopyWithImpl(_$VoteVideoSuccessImpl<T> _value,
      $Res Function(_$VoteVideoSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? i = null,
  }) {
    return _then(_$VoteVideoSuccessImpl<T>(
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as VideoModel,
      null == i
          ? _value.i
          : i // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$VoteVideoSuccessImpl<T> implements VoteVideoSuccess<T> {
  const _$VoteVideoSuccessImpl(this.model, this.i);

  @override
  final VideoModel model;
  @override
  final int i;

  @override
  String toString() {
    return 'PostState<$T>.voteVideoSuccess(model: $model, i: $i)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VoteVideoSuccessImpl<T> &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.i, i) || other.i == i));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model, i);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VoteVideoSuccessImplCopyWith<T, _$VoteVideoSuccessImpl<T>> get copyWith =>
      __$$VoteVideoSuccessImplCopyWithImpl<T, _$VoteVideoSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(bool visibility) changeVisibilityController,
    required TResult Function(VideoModel model, int i) voteVideoSuccess,
    required TResult Function(bool visibility) showCommentsBottomSheetSuccess,
    required TResult Function(VoteType voteType, CommentModel model)
        voteCommentSuccess,
    required TResult Function(CommentFilterModel model) setCommentFilterSuccess,
    required TResult Function(CommentModel model) addCommentSuccess,
    required TResult Function(CommentModel model) deleteCommentSuccess,
  }) {
    return voteVideoSuccess(model, i);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(bool visibility)? changeVisibilityController,
    TResult? Function(VideoModel model, int i)? voteVideoSuccess,
    TResult? Function(bool visibility)? showCommentsBottomSheetSuccess,
    TResult? Function(VoteType voteType, CommentModel model)?
        voteCommentSuccess,
    TResult? Function(CommentFilterModel model)? setCommentFilterSuccess,
    TResult? Function(CommentModel model)? addCommentSuccess,
    TResult? Function(CommentModel model)? deleteCommentSuccess,
  }) {
    return voteVideoSuccess?.call(model, i);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(bool visibility)? changeVisibilityController,
    TResult Function(VideoModel model, int i)? voteVideoSuccess,
    TResult Function(bool visibility)? showCommentsBottomSheetSuccess,
    TResult Function(VoteType voteType, CommentModel model)? voteCommentSuccess,
    TResult Function(CommentFilterModel model)? setCommentFilterSuccess,
    TResult Function(CommentModel model)? addCommentSuccess,
    TResult Function(CommentModel model)? deleteCommentSuccess,
    required TResult orElse(),
  }) {
    if (voteVideoSuccess != null) {
      return voteVideoSuccess(model, i);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) idle,
    required TResult Function(ChangeVisibilityController<T> value)
        changeVisibilityController,
    required TResult Function(VoteVideoSuccess<T> value) voteVideoSuccess,
    required TResult Function(ShowCommentsBottomSheetSuccess<T> value)
        showCommentsBottomSheetSuccess,
    required TResult Function(VoteCommentSuccess<T> value) voteCommentSuccess,
    required TResult Function(SetCommentFilterSuccess<T> value)
        setCommentFilterSuccess,
    required TResult Function(AddCommentSuccess<T> value) addCommentSuccess,
    required TResult Function(DeleteCommentSuccess<T> value)
        deleteCommentSuccess,
  }) {
    return voteVideoSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle<T> value)? idle,
    TResult? Function(ChangeVisibilityController<T> value)?
        changeVisibilityController,
    TResult? Function(VoteVideoSuccess<T> value)? voteVideoSuccess,
    TResult? Function(ShowCommentsBottomSheetSuccess<T> value)?
        showCommentsBottomSheetSuccess,
    TResult? Function(VoteCommentSuccess<T> value)? voteCommentSuccess,
    TResult? Function(SetCommentFilterSuccess<T> value)?
        setCommentFilterSuccess,
    TResult? Function(AddCommentSuccess<T> value)? addCommentSuccess,
    TResult? Function(DeleteCommentSuccess<T> value)? deleteCommentSuccess,
  }) {
    return voteVideoSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(ChangeVisibilityController<T> value)?
        changeVisibilityController,
    TResult Function(VoteVideoSuccess<T> value)? voteVideoSuccess,
    TResult Function(ShowCommentsBottomSheetSuccess<T> value)?
        showCommentsBottomSheetSuccess,
    TResult Function(VoteCommentSuccess<T> value)? voteCommentSuccess,
    TResult Function(SetCommentFilterSuccess<T> value)? setCommentFilterSuccess,
    TResult Function(AddCommentSuccess<T> value)? addCommentSuccess,
    TResult Function(DeleteCommentSuccess<T> value)? deleteCommentSuccess,
    required TResult orElse(),
  }) {
    if (voteVideoSuccess != null) {
      return voteVideoSuccess(this);
    }
    return orElse();
  }
}

abstract class VoteVideoSuccess<T> implements PostState<T> {
  const factory VoteVideoSuccess(final VideoModel model, final int i) =
      _$VoteVideoSuccessImpl<T>;

  VideoModel get model;
  int get i;
  @JsonKey(ignore: true)
  _$$VoteVideoSuccessImplCopyWith<T, _$VoteVideoSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowCommentsBottomSheetSuccessImplCopyWith<T, $Res> {
  factory _$$ShowCommentsBottomSheetSuccessImplCopyWith(
          _$ShowCommentsBottomSheetSuccessImpl<T> value,
          $Res Function(_$ShowCommentsBottomSheetSuccessImpl<T>) then) =
      __$$ShowCommentsBottomSheetSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({bool visibility});
}

/// @nodoc
class __$$ShowCommentsBottomSheetSuccessImplCopyWithImpl<T, $Res>
    extends _$PostStateCopyWithImpl<T, $Res,
        _$ShowCommentsBottomSheetSuccessImpl<T>>
    implements _$$ShowCommentsBottomSheetSuccessImplCopyWith<T, $Res> {
  __$$ShowCommentsBottomSheetSuccessImplCopyWithImpl(
      _$ShowCommentsBottomSheetSuccessImpl<T> _value,
      $Res Function(_$ShowCommentsBottomSheetSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visibility = null,
  }) {
    return _then(_$ShowCommentsBottomSheetSuccessImpl<T>(
      null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ShowCommentsBottomSheetSuccessImpl<T>
    implements ShowCommentsBottomSheetSuccess<T> {
  const _$ShowCommentsBottomSheetSuccessImpl(this.visibility);

  @override
  final bool visibility;

  @override
  String toString() {
    return 'PostState<$T>.showCommentsBottomSheetSuccess(visibility: $visibility)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowCommentsBottomSheetSuccessImpl<T> &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility));
  }

  @override
  int get hashCode => Object.hash(runtimeType, visibility);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowCommentsBottomSheetSuccessImplCopyWith<T,
          _$ShowCommentsBottomSheetSuccessImpl<T>>
      get copyWith => __$$ShowCommentsBottomSheetSuccessImplCopyWithImpl<T,
          _$ShowCommentsBottomSheetSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(bool visibility) changeVisibilityController,
    required TResult Function(VideoModel model, int i) voteVideoSuccess,
    required TResult Function(bool visibility) showCommentsBottomSheetSuccess,
    required TResult Function(VoteType voteType, CommentModel model)
        voteCommentSuccess,
    required TResult Function(CommentFilterModel model) setCommentFilterSuccess,
    required TResult Function(CommentModel model) addCommentSuccess,
    required TResult Function(CommentModel model) deleteCommentSuccess,
  }) {
    return showCommentsBottomSheetSuccess(visibility);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(bool visibility)? changeVisibilityController,
    TResult? Function(VideoModel model, int i)? voteVideoSuccess,
    TResult? Function(bool visibility)? showCommentsBottomSheetSuccess,
    TResult? Function(VoteType voteType, CommentModel model)?
        voteCommentSuccess,
    TResult? Function(CommentFilterModel model)? setCommentFilterSuccess,
    TResult? Function(CommentModel model)? addCommentSuccess,
    TResult? Function(CommentModel model)? deleteCommentSuccess,
  }) {
    return showCommentsBottomSheetSuccess?.call(visibility);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(bool visibility)? changeVisibilityController,
    TResult Function(VideoModel model, int i)? voteVideoSuccess,
    TResult Function(bool visibility)? showCommentsBottomSheetSuccess,
    TResult Function(VoteType voteType, CommentModel model)? voteCommentSuccess,
    TResult Function(CommentFilterModel model)? setCommentFilterSuccess,
    TResult Function(CommentModel model)? addCommentSuccess,
    TResult Function(CommentModel model)? deleteCommentSuccess,
    required TResult orElse(),
  }) {
    if (showCommentsBottomSheetSuccess != null) {
      return showCommentsBottomSheetSuccess(visibility);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) idle,
    required TResult Function(ChangeVisibilityController<T> value)
        changeVisibilityController,
    required TResult Function(VoteVideoSuccess<T> value) voteVideoSuccess,
    required TResult Function(ShowCommentsBottomSheetSuccess<T> value)
        showCommentsBottomSheetSuccess,
    required TResult Function(VoteCommentSuccess<T> value) voteCommentSuccess,
    required TResult Function(SetCommentFilterSuccess<T> value)
        setCommentFilterSuccess,
    required TResult Function(AddCommentSuccess<T> value) addCommentSuccess,
    required TResult Function(DeleteCommentSuccess<T> value)
        deleteCommentSuccess,
  }) {
    return showCommentsBottomSheetSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle<T> value)? idle,
    TResult? Function(ChangeVisibilityController<T> value)?
        changeVisibilityController,
    TResult? Function(VoteVideoSuccess<T> value)? voteVideoSuccess,
    TResult? Function(ShowCommentsBottomSheetSuccess<T> value)?
        showCommentsBottomSheetSuccess,
    TResult? Function(VoteCommentSuccess<T> value)? voteCommentSuccess,
    TResult? Function(SetCommentFilterSuccess<T> value)?
        setCommentFilterSuccess,
    TResult? Function(AddCommentSuccess<T> value)? addCommentSuccess,
    TResult? Function(DeleteCommentSuccess<T> value)? deleteCommentSuccess,
  }) {
    return showCommentsBottomSheetSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(ChangeVisibilityController<T> value)?
        changeVisibilityController,
    TResult Function(VoteVideoSuccess<T> value)? voteVideoSuccess,
    TResult Function(ShowCommentsBottomSheetSuccess<T> value)?
        showCommentsBottomSheetSuccess,
    TResult Function(VoteCommentSuccess<T> value)? voteCommentSuccess,
    TResult Function(SetCommentFilterSuccess<T> value)? setCommentFilterSuccess,
    TResult Function(AddCommentSuccess<T> value)? addCommentSuccess,
    TResult Function(DeleteCommentSuccess<T> value)? deleteCommentSuccess,
    required TResult orElse(),
  }) {
    if (showCommentsBottomSheetSuccess != null) {
      return showCommentsBottomSheetSuccess(this);
    }
    return orElse();
  }
}

abstract class ShowCommentsBottomSheetSuccess<T> implements PostState<T> {
  const factory ShowCommentsBottomSheetSuccess(final bool visibility) =
      _$ShowCommentsBottomSheetSuccessImpl<T>;

  bool get visibility;
  @JsonKey(ignore: true)
  _$$ShowCommentsBottomSheetSuccessImplCopyWith<T,
          _$ShowCommentsBottomSheetSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VoteCommentSuccessImplCopyWith<T, $Res> {
  factory _$$VoteCommentSuccessImplCopyWith(_$VoteCommentSuccessImpl<T> value,
          $Res Function(_$VoteCommentSuccessImpl<T>) then) =
      __$$VoteCommentSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({VoteType voteType, CommentModel model});
}

/// @nodoc
class __$$VoteCommentSuccessImplCopyWithImpl<T, $Res>
    extends _$PostStateCopyWithImpl<T, $Res, _$VoteCommentSuccessImpl<T>>
    implements _$$VoteCommentSuccessImplCopyWith<T, $Res> {
  __$$VoteCommentSuccessImplCopyWithImpl(_$VoteCommentSuccessImpl<T> _value,
      $Res Function(_$VoteCommentSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? voteType = null,
    Object? model = null,
  }) {
    return _then(_$VoteCommentSuccessImpl<T>(
      null == voteType
          ? _value.voteType
          : voteType // ignore: cast_nullable_to_non_nullable
              as VoteType,
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as CommentModel,
    ));
  }
}

/// @nodoc

class _$VoteCommentSuccessImpl<T> implements VoteCommentSuccess<T> {
  const _$VoteCommentSuccessImpl(this.voteType, this.model);

  @override
  final VoteType voteType;
  @override
  final CommentModel model;

  @override
  String toString() {
    return 'PostState<$T>.voteCommentSuccess(voteType: $voteType, model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VoteCommentSuccessImpl<T> &&
            (identical(other.voteType, voteType) ||
                other.voteType == voteType) &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, voteType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VoteCommentSuccessImplCopyWith<T, _$VoteCommentSuccessImpl<T>>
      get copyWith => __$$VoteCommentSuccessImplCopyWithImpl<T,
          _$VoteCommentSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(bool visibility) changeVisibilityController,
    required TResult Function(VideoModel model, int i) voteVideoSuccess,
    required TResult Function(bool visibility) showCommentsBottomSheetSuccess,
    required TResult Function(VoteType voteType, CommentModel model)
        voteCommentSuccess,
    required TResult Function(CommentFilterModel model) setCommentFilterSuccess,
    required TResult Function(CommentModel model) addCommentSuccess,
    required TResult Function(CommentModel model) deleteCommentSuccess,
  }) {
    return voteCommentSuccess(voteType, model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(bool visibility)? changeVisibilityController,
    TResult? Function(VideoModel model, int i)? voteVideoSuccess,
    TResult? Function(bool visibility)? showCommentsBottomSheetSuccess,
    TResult? Function(VoteType voteType, CommentModel model)?
        voteCommentSuccess,
    TResult? Function(CommentFilterModel model)? setCommentFilterSuccess,
    TResult? Function(CommentModel model)? addCommentSuccess,
    TResult? Function(CommentModel model)? deleteCommentSuccess,
  }) {
    return voteCommentSuccess?.call(voteType, model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(bool visibility)? changeVisibilityController,
    TResult Function(VideoModel model, int i)? voteVideoSuccess,
    TResult Function(bool visibility)? showCommentsBottomSheetSuccess,
    TResult Function(VoteType voteType, CommentModel model)? voteCommentSuccess,
    TResult Function(CommentFilterModel model)? setCommentFilterSuccess,
    TResult Function(CommentModel model)? addCommentSuccess,
    TResult Function(CommentModel model)? deleteCommentSuccess,
    required TResult orElse(),
  }) {
    if (voteCommentSuccess != null) {
      return voteCommentSuccess(voteType, model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) idle,
    required TResult Function(ChangeVisibilityController<T> value)
        changeVisibilityController,
    required TResult Function(VoteVideoSuccess<T> value) voteVideoSuccess,
    required TResult Function(ShowCommentsBottomSheetSuccess<T> value)
        showCommentsBottomSheetSuccess,
    required TResult Function(VoteCommentSuccess<T> value) voteCommentSuccess,
    required TResult Function(SetCommentFilterSuccess<T> value)
        setCommentFilterSuccess,
    required TResult Function(AddCommentSuccess<T> value) addCommentSuccess,
    required TResult Function(DeleteCommentSuccess<T> value)
        deleteCommentSuccess,
  }) {
    return voteCommentSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle<T> value)? idle,
    TResult? Function(ChangeVisibilityController<T> value)?
        changeVisibilityController,
    TResult? Function(VoteVideoSuccess<T> value)? voteVideoSuccess,
    TResult? Function(ShowCommentsBottomSheetSuccess<T> value)?
        showCommentsBottomSheetSuccess,
    TResult? Function(VoteCommentSuccess<T> value)? voteCommentSuccess,
    TResult? Function(SetCommentFilterSuccess<T> value)?
        setCommentFilterSuccess,
    TResult? Function(AddCommentSuccess<T> value)? addCommentSuccess,
    TResult? Function(DeleteCommentSuccess<T> value)? deleteCommentSuccess,
  }) {
    return voteCommentSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(ChangeVisibilityController<T> value)?
        changeVisibilityController,
    TResult Function(VoteVideoSuccess<T> value)? voteVideoSuccess,
    TResult Function(ShowCommentsBottomSheetSuccess<T> value)?
        showCommentsBottomSheetSuccess,
    TResult Function(VoteCommentSuccess<T> value)? voteCommentSuccess,
    TResult Function(SetCommentFilterSuccess<T> value)? setCommentFilterSuccess,
    TResult Function(AddCommentSuccess<T> value)? addCommentSuccess,
    TResult Function(DeleteCommentSuccess<T> value)? deleteCommentSuccess,
    required TResult orElse(),
  }) {
    if (voteCommentSuccess != null) {
      return voteCommentSuccess(this);
    }
    return orElse();
  }
}

abstract class VoteCommentSuccess<T> implements PostState<T> {
  const factory VoteCommentSuccess(
          final VoteType voteType, final CommentModel model) =
      _$VoteCommentSuccessImpl<T>;

  VoteType get voteType;
  CommentModel get model;
  @JsonKey(ignore: true)
  _$$VoteCommentSuccessImplCopyWith<T, _$VoteCommentSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetCommentFilterSuccessImplCopyWith<T, $Res> {
  factory _$$SetCommentFilterSuccessImplCopyWith(
          _$SetCommentFilterSuccessImpl<T> value,
          $Res Function(_$SetCommentFilterSuccessImpl<T>) then) =
      __$$SetCommentFilterSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({CommentFilterModel model});
}

/// @nodoc
class __$$SetCommentFilterSuccessImplCopyWithImpl<T, $Res>
    extends _$PostStateCopyWithImpl<T, $Res, _$SetCommentFilterSuccessImpl<T>>
    implements _$$SetCommentFilterSuccessImplCopyWith<T, $Res> {
  __$$SetCommentFilterSuccessImplCopyWithImpl(
      _$SetCommentFilterSuccessImpl<T> _value,
      $Res Function(_$SetCommentFilterSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$SetCommentFilterSuccessImpl<T>(
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as CommentFilterModel,
    ));
  }
}

/// @nodoc

class _$SetCommentFilterSuccessImpl<T> implements SetCommentFilterSuccess<T> {
  const _$SetCommentFilterSuccessImpl(this.model);

  @override
  final CommentFilterModel model;

  @override
  String toString() {
    return 'PostState<$T>.setCommentFilterSuccess(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetCommentFilterSuccessImpl<T> &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetCommentFilterSuccessImplCopyWith<T, _$SetCommentFilterSuccessImpl<T>>
      get copyWith => __$$SetCommentFilterSuccessImplCopyWithImpl<T,
          _$SetCommentFilterSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(bool visibility) changeVisibilityController,
    required TResult Function(VideoModel model, int i) voteVideoSuccess,
    required TResult Function(bool visibility) showCommentsBottomSheetSuccess,
    required TResult Function(VoteType voteType, CommentModel model)
        voteCommentSuccess,
    required TResult Function(CommentFilterModel model) setCommentFilterSuccess,
    required TResult Function(CommentModel model) addCommentSuccess,
    required TResult Function(CommentModel model) deleteCommentSuccess,
  }) {
    return setCommentFilterSuccess(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(bool visibility)? changeVisibilityController,
    TResult? Function(VideoModel model, int i)? voteVideoSuccess,
    TResult? Function(bool visibility)? showCommentsBottomSheetSuccess,
    TResult? Function(VoteType voteType, CommentModel model)?
        voteCommentSuccess,
    TResult? Function(CommentFilterModel model)? setCommentFilterSuccess,
    TResult? Function(CommentModel model)? addCommentSuccess,
    TResult? Function(CommentModel model)? deleteCommentSuccess,
  }) {
    return setCommentFilterSuccess?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(bool visibility)? changeVisibilityController,
    TResult Function(VideoModel model, int i)? voteVideoSuccess,
    TResult Function(bool visibility)? showCommentsBottomSheetSuccess,
    TResult Function(VoteType voteType, CommentModel model)? voteCommentSuccess,
    TResult Function(CommentFilterModel model)? setCommentFilterSuccess,
    TResult Function(CommentModel model)? addCommentSuccess,
    TResult Function(CommentModel model)? deleteCommentSuccess,
    required TResult orElse(),
  }) {
    if (setCommentFilterSuccess != null) {
      return setCommentFilterSuccess(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) idle,
    required TResult Function(ChangeVisibilityController<T> value)
        changeVisibilityController,
    required TResult Function(VoteVideoSuccess<T> value) voteVideoSuccess,
    required TResult Function(ShowCommentsBottomSheetSuccess<T> value)
        showCommentsBottomSheetSuccess,
    required TResult Function(VoteCommentSuccess<T> value) voteCommentSuccess,
    required TResult Function(SetCommentFilterSuccess<T> value)
        setCommentFilterSuccess,
    required TResult Function(AddCommentSuccess<T> value) addCommentSuccess,
    required TResult Function(DeleteCommentSuccess<T> value)
        deleteCommentSuccess,
  }) {
    return setCommentFilterSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle<T> value)? idle,
    TResult? Function(ChangeVisibilityController<T> value)?
        changeVisibilityController,
    TResult? Function(VoteVideoSuccess<T> value)? voteVideoSuccess,
    TResult? Function(ShowCommentsBottomSheetSuccess<T> value)?
        showCommentsBottomSheetSuccess,
    TResult? Function(VoteCommentSuccess<T> value)? voteCommentSuccess,
    TResult? Function(SetCommentFilterSuccess<T> value)?
        setCommentFilterSuccess,
    TResult? Function(AddCommentSuccess<T> value)? addCommentSuccess,
    TResult? Function(DeleteCommentSuccess<T> value)? deleteCommentSuccess,
  }) {
    return setCommentFilterSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(ChangeVisibilityController<T> value)?
        changeVisibilityController,
    TResult Function(VoteVideoSuccess<T> value)? voteVideoSuccess,
    TResult Function(ShowCommentsBottomSheetSuccess<T> value)?
        showCommentsBottomSheetSuccess,
    TResult Function(VoteCommentSuccess<T> value)? voteCommentSuccess,
    TResult Function(SetCommentFilterSuccess<T> value)? setCommentFilterSuccess,
    TResult Function(AddCommentSuccess<T> value)? addCommentSuccess,
    TResult Function(DeleteCommentSuccess<T> value)? deleteCommentSuccess,
    required TResult orElse(),
  }) {
    if (setCommentFilterSuccess != null) {
      return setCommentFilterSuccess(this);
    }
    return orElse();
  }
}

abstract class SetCommentFilterSuccess<T> implements PostState<T> {
  const factory SetCommentFilterSuccess(final CommentFilterModel model) =
      _$SetCommentFilterSuccessImpl<T>;

  CommentFilterModel get model;
  @JsonKey(ignore: true)
  _$$SetCommentFilterSuccessImplCopyWith<T, _$SetCommentFilterSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddCommentSuccessImplCopyWith<T, $Res> {
  factory _$$AddCommentSuccessImplCopyWith(_$AddCommentSuccessImpl<T> value,
          $Res Function(_$AddCommentSuccessImpl<T>) then) =
      __$$AddCommentSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({CommentModel model});
}

/// @nodoc
class __$$AddCommentSuccessImplCopyWithImpl<T, $Res>
    extends _$PostStateCopyWithImpl<T, $Res, _$AddCommentSuccessImpl<T>>
    implements _$$AddCommentSuccessImplCopyWith<T, $Res> {
  __$$AddCommentSuccessImplCopyWithImpl(_$AddCommentSuccessImpl<T> _value,
      $Res Function(_$AddCommentSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$AddCommentSuccessImpl<T>(
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as CommentModel,
    ));
  }
}

/// @nodoc

class _$AddCommentSuccessImpl<T> implements AddCommentSuccess<T> {
  const _$AddCommentSuccessImpl(this.model);

  @override
  final CommentModel model;

  @override
  String toString() {
    return 'PostState<$T>.addCommentSuccess(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCommentSuccessImpl<T> &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCommentSuccessImplCopyWith<T, _$AddCommentSuccessImpl<T>>
      get copyWith =>
          __$$AddCommentSuccessImplCopyWithImpl<T, _$AddCommentSuccessImpl<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(bool visibility) changeVisibilityController,
    required TResult Function(VideoModel model, int i) voteVideoSuccess,
    required TResult Function(bool visibility) showCommentsBottomSheetSuccess,
    required TResult Function(VoteType voteType, CommentModel model)
        voteCommentSuccess,
    required TResult Function(CommentFilterModel model) setCommentFilterSuccess,
    required TResult Function(CommentModel model) addCommentSuccess,
    required TResult Function(CommentModel model) deleteCommentSuccess,
  }) {
    return addCommentSuccess(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(bool visibility)? changeVisibilityController,
    TResult? Function(VideoModel model, int i)? voteVideoSuccess,
    TResult? Function(bool visibility)? showCommentsBottomSheetSuccess,
    TResult? Function(VoteType voteType, CommentModel model)?
        voteCommentSuccess,
    TResult? Function(CommentFilterModel model)? setCommentFilterSuccess,
    TResult? Function(CommentModel model)? addCommentSuccess,
    TResult? Function(CommentModel model)? deleteCommentSuccess,
  }) {
    return addCommentSuccess?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(bool visibility)? changeVisibilityController,
    TResult Function(VideoModel model, int i)? voteVideoSuccess,
    TResult Function(bool visibility)? showCommentsBottomSheetSuccess,
    TResult Function(VoteType voteType, CommentModel model)? voteCommentSuccess,
    TResult Function(CommentFilterModel model)? setCommentFilterSuccess,
    TResult Function(CommentModel model)? addCommentSuccess,
    TResult Function(CommentModel model)? deleteCommentSuccess,
    required TResult orElse(),
  }) {
    if (addCommentSuccess != null) {
      return addCommentSuccess(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) idle,
    required TResult Function(ChangeVisibilityController<T> value)
        changeVisibilityController,
    required TResult Function(VoteVideoSuccess<T> value) voteVideoSuccess,
    required TResult Function(ShowCommentsBottomSheetSuccess<T> value)
        showCommentsBottomSheetSuccess,
    required TResult Function(VoteCommentSuccess<T> value) voteCommentSuccess,
    required TResult Function(SetCommentFilterSuccess<T> value)
        setCommentFilterSuccess,
    required TResult Function(AddCommentSuccess<T> value) addCommentSuccess,
    required TResult Function(DeleteCommentSuccess<T> value)
        deleteCommentSuccess,
  }) {
    return addCommentSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle<T> value)? idle,
    TResult? Function(ChangeVisibilityController<T> value)?
        changeVisibilityController,
    TResult? Function(VoteVideoSuccess<T> value)? voteVideoSuccess,
    TResult? Function(ShowCommentsBottomSheetSuccess<T> value)?
        showCommentsBottomSheetSuccess,
    TResult? Function(VoteCommentSuccess<T> value)? voteCommentSuccess,
    TResult? Function(SetCommentFilterSuccess<T> value)?
        setCommentFilterSuccess,
    TResult? Function(AddCommentSuccess<T> value)? addCommentSuccess,
    TResult? Function(DeleteCommentSuccess<T> value)? deleteCommentSuccess,
  }) {
    return addCommentSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(ChangeVisibilityController<T> value)?
        changeVisibilityController,
    TResult Function(VoteVideoSuccess<T> value)? voteVideoSuccess,
    TResult Function(ShowCommentsBottomSheetSuccess<T> value)?
        showCommentsBottomSheetSuccess,
    TResult Function(VoteCommentSuccess<T> value)? voteCommentSuccess,
    TResult Function(SetCommentFilterSuccess<T> value)? setCommentFilterSuccess,
    TResult Function(AddCommentSuccess<T> value)? addCommentSuccess,
    TResult Function(DeleteCommentSuccess<T> value)? deleteCommentSuccess,
    required TResult orElse(),
  }) {
    if (addCommentSuccess != null) {
      return addCommentSuccess(this);
    }
    return orElse();
  }
}

abstract class AddCommentSuccess<T> implements PostState<T> {
  const factory AddCommentSuccess(final CommentModel model) =
      _$AddCommentSuccessImpl<T>;

  CommentModel get model;
  @JsonKey(ignore: true)
  _$$AddCommentSuccessImplCopyWith<T, _$AddCommentSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteCommentSuccessImplCopyWith<T, $Res> {
  factory _$$DeleteCommentSuccessImplCopyWith(
          _$DeleteCommentSuccessImpl<T> value,
          $Res Function(_$DeleteCommentSuccessImpl<T>) then) =
      __$$DeleteCommentSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({CommentModel model});
}

/// @nodoc
class __$$DeleteCommentSuccessImplCopyWithImpl<T, $Res>
    extends _$PostStateCopyWithImpl<T, $Res, _$DeleteCommentSuccessImpl<T>>
    implements _$$DeleteCommentSuccessImplCopyWith<T, $Res> {
  __$$DeleteCommentSuccessImplCopyWithImpl(_$DeleteCommentSuccessImpl<T> _value,
      $Res Function(_$DeleteCommentSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$DeleteCommentSuccessImpl<T>(
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as CommentModel,
    ));
  }
}

/// @nodoc

class _$DeleteCommentSuccessImpl<T> implements DeleteCommentSuccess<T> {
  const _$DeleteCommentSuccessImpl(this.model);

  @override
  final CommentModel model;

  @override
  String toString() {
    return 'PostState<$T>.deleteCommentSuccess(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCommentSuccessImpl<T> &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCommentSuccessImplCopyWith<T, _$DeleteCommentSuccessImpl<T>>
      get copyWith => __$$DeleteCommentSuccessImplCopyWithImpl<T,
          _$DeleteCommentSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(bool visibility) changeVisibilityController,
    required TResult Function(VideoModel model, int i) voteVideoSuccess,
    required TResult Function(bool visibility) showCommentsBottomSheetSuccess,
    required TResult Function(VoteType voteType, CommentModel model)
        voteCommentSuccess,
    required TResult Function(CommentFilterModel model) setCommentFilterSuccess,
    required TResult Function(CommentModel model) addCommentSuccess,
    required TResult Function(CommentModel model) deleteCommentSuccess,
  }) {
    return deleteCommentSuccess(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(bool visibility)? changeVisibilityController,
    TResult? Function(VideoModel model, int i)? voteVideoSuccess,
    TResult? Function(bool visibility)? showCommentsBottomSheetSuccess,
    TResult? Function(VoteType voteType, CommentModel model)?
        voteCommentSuccess,
    TResult? Function(CommentFilterModel model)? setCommentFilterSuccess,
    TResult? Function(CommentModel model)? addCommentSuccess,
    TResult? Function(CommentModel model)? deleteCommentSuccess,
  }) {
    return deleteCommentSuccess?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(bool visibility)? changeVisibilityController,
    TResult Function(VideoModel model, int i)? voteVideoSuccess,
    TResult Function(bool visibility)? showCommentsBottomSheetSuccess,
    TResult Function(VoteType voteType, CommentModel model)? voteCommentSuccess,
    TResult Function(CommentFilterModel model)? setCommentFilterSuccess,
    TResult Function(CommentModel model)? addCommentSuccess,
    TResult Function(CommentModel model)? deleteCommentSuccess,
    required TResult orElse(),
  }) {
    if (deleteCommentSuccess != null) {
      return deleteCommentSuccess(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) idle,
    required TResult Function(ChangeVisibilityController<T> value)
        changeVisibilityController,
    required TResult Function(VoteVideoSuccess<T> value) voteVideoSuccess,
    required TResult Function(ShowCommentsBottomSheetSuccess<T> value)
        showCommentsBottomSheetSuccess,
    required TResult Function(VoteCommentSuccess<T> value) voteCommentSuccess,
    required TResult Function(SetCommentFilterSuccess<T> value)
        setCommentFilterSuccess,
    required TResult Function(AddCommentSuccess<T> value) addCommentSuccess,
    required TResult Function(DeleteCommentSuccess<T> value)
        deleteCommentSuccess,
  }) {
    return deleteCommentSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle<T> value)? idle,
    TResult? Function(ChangeVisibilityController<T> value)?
        changeVisibilityController,
    TResult? Function(VoteVideoSuccess<T> value)? voteVideoSuccess,
    TResult? Function(ShowCommentsBottomSheetSuccess<T> value)?
        showCommentsBottomSheetSuccess,
    TResult? Function(VoteCommentSuccess<T> value)? voteCommentSuccess,
    TResult? Function(SetCommentFilterSuccess<T> value)?
        setCommentFilterSuccess,
    TResult? Function(AddCommentSuccess<T> value)? addCommentSuccess,
    TResult? Function(DeleteCommentSuccess<T> value)? deleteCommentSuccess,
  }) {
    return deleteCommentSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(ChangeVisibilityController<T> value)?
        changeVisibilityController,
    TResult Function(VoteVideoSuccess<T> value)? voteVideoSuccess,
    TResult Function(ShowCommentsBottomSheetSuccess<T> value)?
        showCommentsBottomSheetSuccess,
    TResult Function(VoteCommentSuccess<T> value)? voteCommentSuccess,
    TResult Function(SetCommentFilterSuccess<T> value)? setCommentFilterSuccess,
    TResult Function(AddCommentSuccess<T> value)? addCommentSuccess,
    TResult Function(DeleteCommentSuccess<T> value)? deleteCommentSuccess,
    required TResult orElse(),
  }) {
    if (deleteCommentSuccess != null) {
      return deleteCommentSuccess(this);
    }
    return orElse();
  }
}

abstract class DeleteCommentSuccess<T> implements PostState<T> {
  const factory DeleteCommentSuccess(final CommentModel model) =
      _$DeleteCommentSuccessImpl<T>;

  CommentModel get model;
  @JsonKey(ignore: true)
  _$$DeleteCommentSuccessImplCopyWith<T, _$DeleteCommentSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
