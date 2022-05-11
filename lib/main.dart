import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:student_manager/Home/screen_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (BuildContext context, orientation, deviceType) {
      return MaterialApp(
        title: 'Student Manager',
        theme: ThemeData(
          fontFamily: 'Tajawal',
          primaryColor: const Color.fromARGB(255, 45, 104, 160),
          textTheme: const TextTheme(),
        ),
        home: const ScreenHome(),
      );
    });
  }
}
