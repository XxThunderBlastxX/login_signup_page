import 'package:flutter/material.dart';

class buildDivider extends StatelessWidget {
  const buildDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Divider(
        height: 1.5,
        color: Color(0xFFD9D9D9),
      ),
    );
  }
}
