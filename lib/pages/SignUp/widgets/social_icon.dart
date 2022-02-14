import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants/constants.dart';

class SocialIcon extends StatelessWidget {
  final String? path;
  final Function? press;
  const SocialIcon({
    Key? key,
    this.path,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        press!();
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: kPrimaryColor,
          ),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          path!,
          width: 20,
          height: 20,
          color: kPrimaryColor,
        ),
      ),
    );
  }
}
