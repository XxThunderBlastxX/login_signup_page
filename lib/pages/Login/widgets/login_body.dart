import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_ui/pages/Login/widgets/login_bg.dart';
import 'package:login_ui/widgets/roundedButton.dart';

import '../../../widgets/alreadyHaveAnAccountCheck.dart';
import '../../../widgets/roundedInputField.dart';
import '../../../widgets/roundedPasswordField.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return LoginBg(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'LOGIN',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            SvgPicture.asset(
              'assets/icons/login.svg',
              height: size.height * 0.35,
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            RoundedInputField(
              hintText: 'Your Email',
              icon: Icons.person,
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: 'LOGIN',
              press: () {},
            ),
            SizedBox(
              height: size.height * 0.022,
            ),
            AlreadyHaveAnAccountCheck(
              press: () {},
              login: true,
            )
          ],
        ),
      ),
    );
  }
}
