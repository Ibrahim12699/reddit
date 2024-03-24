import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reddit/core/business_logic/cubit/global_cubit.dart';
import 'package:reddit/core/resources/injection.dart';
import 'package:reddit/features/posts/logic/cubit/post_cubit.dart';
import 'package:reddit/features/posts/presentation/screens/posts_screen.dart';
import 'package:reddit/features/splash/presentation/screens/splash_screen.dart';

class Routes {
  static const String splashRoute = '/splashRoute';

  static const String innerPostScreenRoute = '/innerPostScreenRoute';
}

class RouteGenerator {
  static late GlobalCubit globalCubit;
  static late PostCubit postCubit;

  RouteGenerator() {
    globalCubit = getIt<GlobalCubit>();
    postCubit = getIt<PostCubit>();
  }

  Route? getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());

      case Routes.innerPostScreenRoute:
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: postCubit,
            child: const PostsScreen(),
          ),
        );

      default:
        return null;
    }
  }
}
