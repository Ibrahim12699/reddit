import 'package:freezed_annotation/freezed_annotation.dart';

part 'global_state.freezed.dart';

@freezed
class GlobalState<T> with _$GlobalState<T> {
  const factory GlobalState.idle() = Idle<T>;



}

