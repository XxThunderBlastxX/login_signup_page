import 'package:flutter/material.dart';

import './widgets/signup_body.dart';

class SignUpPage extends StatelessWidget {
  //Route Name
  static const routeName = '/signup';
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
