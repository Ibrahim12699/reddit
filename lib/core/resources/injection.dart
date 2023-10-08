import 'package:get_it/get_it.dart';
import 'package:reddit/core/business_logic/cubit/global_cubit.dart';
import 'package:reddit/features/posts/data/repositories/post_repo.dart';
import 'package:reddit/features/posts/logic/cubit/post_cubit.dart';

final getIt = GetIt.instance;

void initGetIt() {
  getIt.registerLazySingleton<GlobalCubit>(() => GlobalCubit());

  getIt.registerLazySingleton<PostRepo>(() => PostRepo());
  getIt.registerLazySingleton<PostCubit>(() => PostCubit(
        getIt<PostRepo>(),
      ));
}
