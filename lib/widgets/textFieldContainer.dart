import 'package:flutter/material.dart';

import '../constants/constants.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget? child;
  const TextFieldContainer({
    Key? key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      // height: 40,
      width: size.width * 0.8,
      padding: const EdgeInsets.symmetric(
        vertical: 2,
        horizontal: 20,
      ),
      decoration: const BoxDecoration(
        color: kPrimaryLightColor,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: child,
    );
  }
}
