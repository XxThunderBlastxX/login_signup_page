import 'package:flutter/material.dart';
import 'package:login_ui/constants/constants.dart';

import './divider_line.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          buildDivider(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 11.0),
            child: Text(
              'Or',
              style: TextStyle(color: kPrimaryColor),
            ),
          ),
          buildDivider(),
        ],
      ),
    );
  }
}
