import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  //Route Name
  static const routeName = '/signup';
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Text('sign up Page'),
      ),
    );
  }
}
