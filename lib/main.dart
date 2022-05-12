import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:student_manager/Home/screen_home.dart';

import 'core/colors/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (BuildContext context, orientation, deviceType) {
      return MaterialApp(
        title: 'Student Manager',
        theme: ThemeData(

          appBarTheme: AppBarTheme(
            titleTextStyle: Theme.of(context)
                .textTheme
                .apply(
                  bodyColor: kwhiteColor,
                )
                .headline6,
          ),
          scaffoldBackgroundColor: backgroundColor,
          textTheme: const TextTheme(
            bodyText1: TextStyle(),
            bodyText2: TextStyle(),
          ).apply(
            bodyColor: kBlackColor,
          ),
           
        ),
        home: const ScreenHome(),
      );
    });
  }
}
