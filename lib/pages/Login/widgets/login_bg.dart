import 'package:flutter/material.dart';

class LoginBg extends StatelessWidget {
  final Widget child;
  const LoginBg({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          top: 0.0,
          left: 0.0,
          child: Image.asset(
            "assets/images/main_top.png",
            width: size.width * 0.35,
          ),
        ),
        Positioned(
          bottom: 0.0,
          right: 0.0,
          child: Image.asset(
            "assets/images/login_bottom.png",
            width: size.width * 0.40,
          ),
        ),
        child,
      ],
    );
  }
}
