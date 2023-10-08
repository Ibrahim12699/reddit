import 'package:flutter_bloc/flutter_bloc.dart';

import 'global_state.dart';

class GlobalCubit extends Cubit<GlobalState<dynamic>> {
  GlobalCubit() : super(const GlobalState.idle());
}
