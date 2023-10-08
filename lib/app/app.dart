// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reddit/core/resources/theme_manager.dart';

import '../core/resources/route_manager.dart';

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  // MyApp._internal();

  // static final MyApp _instance = MyApp._internal(); // single instance

  // factory MyApp() => _instance; // factory to get single instance
  RouteGenerator routeGenerator = RouteGenerator();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: RouteGenerator.globalCubit,
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        useInheritedMediaQuery: true,
        builder: (context, state) {
          return MaterialApp(
            title: 'Reddit Clone',
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            debugShowCheckedModeBanner: false,
            onGenerateRoute: routeGenerator.getRoute,
            darkTheme: kDarkTheme,
            themeMode: ThemeMode.dark,
            initialRoute: Routes.splashRoute,
          );
        },
      ),
    );
  }
}
