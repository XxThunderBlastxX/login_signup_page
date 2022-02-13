import 'package:flutter/material.dart';

import './constants/constants.dart';
import 'pages/Login/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login UI',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        accentColor: kPrimaryLightColor,
      ),
      // home: const LoginPage(),
      initialRoute: '/login',
      routes: {
        LoginPage.routeName: (context) => const LoginPage(),
      },
    );
  }
}
