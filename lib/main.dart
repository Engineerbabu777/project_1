import 'package:flutter/material.dart';
import 'package:project_1/colors.dart';
import 'package:project_1/pages/home_page.dart';
import 'package:project_1/pages/login_page.dart';
import 'package:project_1/pages/main_page.dart';
import 'package:project_1/pages/test_states.dart';

void main() {
  runApp(
    const MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: 'Urbanist',
          scaffoldBackgroundColor: ColorConstants.background,
      ),
      // home: const TestState(),
      initialRoute: '/',
      routes: {
        '/':(context) => LoginPage(),
        '/home':(context) => TestState(),
        '/main':(context)=> MainPage(),
      },
    );
  }
}

