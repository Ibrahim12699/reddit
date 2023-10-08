import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reddit/core/resources/color_manager.dart';
import 'package:reddit/core/resources/font_manager.dart';
import 'package:reddit/core/resources/style_manager.dart';

ThemeData get kDarkTheme => ThemeData(
    useMaterial3: true,
    //! Floating Action Button

    //! Color Scheme
    primaryColor: const Color(0xFFFE4500),
    scaffoldBackgroundColor: const Color(0xFF000000),
    cardColor: const Color(0xFF121212),
    primaryColorDark: const Color(0xFF1e1e1e),
    primaryColorLight: const Color(0xFF272727),
    colorScheme: const ColorScheme.dark(),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Color(0xFF000000),
      // dragHandleColor: Color(0xFF121212),
      dragHandleSize: Size(40, 6),
    ),
    //! Page Transition
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: ZoomPageTransitionsBuilder(),
        TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
      },
    ),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: ColorManager.primary,
    ),
    //! Main Color
    hintColor: ColorManager.darkGrey,
    brightness: Brightness.dark,
    dividerColor: Colors.transparent,
    sliderTheme: SliderThemeData(
      activeTrackColor: ColorManager.white,
      inactiveTrackColor: Colors.white.withOpacity(0.3),
      thumbColor: ColorManager.white,
      // overlayColor: ColorManager.white.withOpacity(0.2),
      trackHeight: 3.h,

      thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 8.0),
      overlayShape: const RoundSliderOverlayShape(overlayRadius: 14.0),
    ),

    //!TextTheme
    textTheme: TextTheme(
        headlineLarge: getBoldStyle(
          color: ColorManager.white,
          fontSize: FontSize.s22.spMin,
        ),
        //---------------------------------------------------------------------------------------------------------
        bodyMedium: getRegularStyle(
          color: ColorManager.lightGrey,
          fontSize: 15.spMin,
        ),
        //----------------------------------------------------------------------------------------------------
        displaySmall: getBoldStyle(
          color: ColorManager.white,
          fontSize: 13.spMin,
        ),
        //-----------------------------------------------------------------------------------
        labelMedium: getBoldStyle(
          color: ColorManager.white,
          fontSize: FontSize.s16.spMin,
        ),
        //-----------------------------------------------------------------------------------
        headlineMedium: getBoldStyle(
          color: ColorManager.primary,
          fontSize: FontSize.s16.spMin,
        ),
        //---------------------------------------------------------------------------------------------------
        bodySmall: getRegularStyle(
          color: ColorManager.primary,
          fontSize: 12.spMin,
        ),
        //-----------------------------------------------------------------------------------------------
        displayMedium: getBoldStyle(
          color: ColorManager.primary,
          fontSize: 16.spMin,
        ),
        displayLarge: getSemiBoldStyle(
          color: ColorManager.darkGrey,
          fontSize: FontSize.s16,
        ),

        //-------------------------

        headlineSmall: getRegularStyle(
          color: ColorManager.white,
          fontSize: 9.spMin,
        )));

// ThemeData get kLightTheme => ThemeData(
//       useMaterial3: true,
//       //! Floating Action Button
//       floatingActionButtonTheme: const FloatingActionButtonThemeData(
//         shape: CircleBorder(),
//       ),
//       //! Color Scheme
//       colorScheme: const ColorScheme.light(
//         primary: ColorManager.primary,
//         secondary: ColorManager.primary,
//         error: Colors.red,
//       ),
//       //! Page Transition
//       pageTransitionsTheme: const PageTransitionsTheme(
//         builders: {
//           TargetPlatform.android: ZoomPageTransitionsBuilder(),
//           TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
//         },
//       ),
//       //! Main Color
//       hintColor: ColorManager.darkGrey,
//       brightness: Brightness.light,
//       scaffoldBackgroundColor: ColorManager.white,
//       dividerColor: Colors.transparent,
//
//       //!Appbar
//       appBarTheme: const AppBarTheme(
//         systemOverlayStyle: SystemUiOverlayStyle(
//           statusBarColor: Colors.transparent,
//           statusBarIconBrightness: Brightness.dark,
//         ),
//         centerTitle: true,
//         elevation: 0.0,
//         backgroundColor: Colors.transparent,
//         titleTextStyle: TextStyle(
//           color: Colors.black,
//         ),
//       ),
//
//       //!TextTheme
//       textTheme: TextTheme(
//         headlineLarge: getBoldStyle(
//           color: ColorManager.white,
//           fontSize: FontSize.s22.spMin,
//         ),
//         //---------------------------------------------------------------------------------------------------------
//         bodyMedium: getRegularStyle(
//           color: ColorManager.lightGrey,
//           fontSize: 15.spMin,
//         ),
//         //----------------------------------------------------------------------------------------------------
//         displaySmall: getBoldStyle(
//           color: ColorManager.white,
//           fontSize: 13.spMin,
//         ),
//         //-----------------------------------------------------------------------------------
//         labelMedium: getBoldStyle(
//           color: ColorManager.white,
//           fontSize: FontSize.s16.spMin,
//         ),
//         //-----------------------------------------------------------------------------------
//         headlineMedium: getBoldStyle(
//           color: ColorManager.primary,
//           fontSize: FontSize.s16.spMin,
//         ),
//         //---------------------------------------------------------------------------------------------------
//         bodySmall: getRegularStyle(
//           color: ColorManager.primary,
//           fontSize: 12.spMin,
//         ),
//         //-----------------------------------------------------------------------------------------------
//         displayMedium: getBoldStyle(
//           color: ColorManager.primary,
//           fontSize: 16.spMin,
//         ),
//         displayLarge: getSemiBoldStyle(
//           color: ColorManager.darkGrey,
//           fontSize: FontSize.s16,
//         ),
//
//         //-------------------------
//
//         headlineSmall: getRegularStyle(
//           color: ColorManager.white,
//           fontSize: 9.spMin,
//         ),
//         //--------------------------------------------
//         titleMedium: getBoldStyle(
//           color: ColorManager.black,
//           fontSize: FontSize.s16.spMin,
//         ),
//         //------------------------------------------------
//         titleSmall: getMediumStyle(
//           color: ColorManager.black,
//           fontSize: 8.spMin,
//         ),
//
//         //---------------------------------------
//         bodyLarge: getMediumStyle(
//           color: ColorManager.black,
//           fontSize: 16.spMin,
//         ),
//         //---------------------------
//         labelSmall: getRegularStyle(
//           color: ColorManager.primary,
//           fontSize: FontSize.s16.spMin,
//         ),
//         //----------------------
//       ),
//
//       //! TFF Theme
//       inputDecorationTheme: InputDecorationTheme(
//         suffixIconColor: ColorManager.secondary,
//         contentPadding: EdgeInsets.all(16.spMin),
//         hintStyle: getRegularStyle(
//           color: ColorManager.lightGrey,
//           fontSize: 15.spMin,
//         ),
//         labelStyle: const TextStyle(
//           color: ColorManager.lightGrey,
//         ),
//         iconColor: ColorManager.secondary,
//         prefixIconColor: ColorManager.secondary,
//         errorStyle: const TextStyle(color: ColorManager.error),
//         disabledBorder: OutlineInputBorder(
//           borderSide: const BorderSide(
//             color: ColorManager.borderColor,
//             width: 1.5,
//           ),
//           borderRadius: BorderRadius.circular(15.r),
//         ),
//         border: OutlineInputBorder(
//           borderSide: const BorderSide(
//             color: ColorManager.borderColor,
//             width: 1.5,
//           ),
//           borderRadius: BorderRadius.circular(15.r),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderSide: const BorderSide(
//             color: ColorManager.borderColor,
//             width: 1.5,
//           ),
//           borderRadius: BorderRadius.circular(15.r),
//         ),
//         errorBorder: OutlineInputBorder(
//           borderSide: const BorderSide(
//             color: ColorManager.error,
//             width: 1.5,
//           ),
//           borderRadius: BorderRadius.circular(15.r),
//         ),
//         enabledBorder: OutlineInputBorder(
//           borderSide: const BorderSide(
//             color: ColorManager.borderColor,
//             width: 1.5,
//           ),
//           borderRadius: BorderRadius.circular(15.r),
//         ),
//         focusedErrorBorder: OutlineInputBorder(
//           borderSide: const BorderSide(
//             color: ColorManager.borderColor,
//             width: 1.5,
//           ),
//           borderRadius: BorderRadius.circular(15.r),
//         ),
//       ),
//
//       //! Switch Theme
//       switchTheme: SwitchThemeData(
//         thumbColor: MaterialStateProperty.all(ColorManager.white),
//         trackColor: MaterialStateProperty.all(Colors.green),
//       ),
//
//       //! TextButton THeme
//       textButtonTheme: TextButtonThemeData(
//         style: TextButton.styleFrom(
//           foregroundColor: ColorManager.primary,
//         ),
//       ),
//       iconButtonTheme: IconButtonThemeData(
//         style: IconButton.styleFrom(
//           fixedSize: Size(40.w, 40.h),
//           backgroundColor: Colors.white10,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(12.r),
//           ),
//         ),
//       ),
//       //! Bottom Sheet Theme
//       bottomSheetTheme: const BottomSheetThemeData(
//         backgroundColor: ColorManager.white,
//       ),
//       //! Checkbox Theme
//       checkboxTheme: CheckboxThemeData(
//         fillColor: const MaterialStatePropertyAll(ColorManager.borderColor),
//         checkColor: const MaterialStatePropertyAll(
//           ColorManager.secondary,
//         ),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(7.r),
//         ),
//       ),
//
//       //! Bottom Nav Bar Theme
//       bottomNavigationBarTheme: const BottomNavigationBarThemeData(
//         backgroundColor: ColorManager.white,
//         selectedItemColor: ColorManager.primary,
//         unselectedItemColor: ColorManager.lightGrey,
//         selectedIconTheme: IconThemeData(
//           color: ColorManager.primary,
//           grade: 1.0,
//           fill: 1.0,
//         ),
//         unselectedIconTheme: IconThemeData(
//           color: ColorManager.lightGrey,
//           grade: 0.2,
//           fill: 0.0,
//         ),
//       ),
//
//       //!ElevatedButtonTheme
//       elevatedButtonTheme: ElevatedButtonThemeData(
//         style: ElevatedButton.styleFrom(
//           fixedSize: Size(335.w, 49.h),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.all(
//               Radius.circular(15.r),
//             ),
//           ),
//           backgroundColor: ColorManager.primary,
//           foregroundColor: Colors.white,
//           surfaceTintColor: Colors.white,
//         ),
//       ),
//       //! Badge Theme
//       badgeTheme: const BadgeThemeData(
//         textColor: Colors.white,
//       ),
//     );
