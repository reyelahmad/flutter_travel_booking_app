import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_booking/buttom_nav_bar.dart';
import 'package:travel_booking/pages/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(370,690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: ( context,  child) {

        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home:  BtNavBar(),
        );
      },
    );
  }
}

