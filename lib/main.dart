import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:twitter_clone/app/Screens/SplashScreen/SplashPage.dart';
import 'package:twitter_clone/app/utils/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: themes(),
        title: 'Twitter Clone',
        home: SplashPage(),
       
      );
    });
  }

  
}
