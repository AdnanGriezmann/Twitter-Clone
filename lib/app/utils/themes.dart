import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'colors.dart';

themes() {
  return ThemeData.dark().copyWith(
    // backgroundColor: AppColors.Darkblue,
    scaffoldBackgroundColor: AppColors.Darkblue,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: TextTheme(
        headline6: TextStyle(
          color: AppColors.white,
          fontSize: 15.0.sp,
          letterSpacing: 1.2,
          fontWeight: FontWeight.bold
        ),
        bodyText1: TextStyle(
          color: AppColors.textcolor1,
          fontSize: 14.sp,
          fontFamily: 'Mulish-Light.ttf',
        ),
        caption: TextStyle(
          
          fontSize: 14.0.sp,
          color: AppColors.caption,
          fontFamily: 'Mulish-ExtraBold.ttf',
          fontWeight: FontWeight.bold
          
        ),
        subtitle1: TextStyle(
          color: AppColors.sub,
          fontSize: 13.0.sp,
          fontWeight: FontWeight.bold,
           fontFamily: 'Mulish-Light.ttf',
        )),
  );
}
