import 'package:flutter/material.dart';

import '../constants/constants.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;

  const AlreadyHaveAnAccountCheck({
    Key? key,
    this.login = true,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          login ? 'Don\'t Have an account?' : "Already Have an Account",
          style: const TextStyle(
            color: kPrimaryColor,
          ),
        ),
        TextButton(
          onPressed: () {
            press();
          },
          child: Text(
            login ? 'Sign Up' : 'Sign In',
            style: const TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
