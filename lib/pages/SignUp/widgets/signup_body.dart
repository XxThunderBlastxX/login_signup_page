import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import './or_divider.dart';
import './singup_bg.dart';
import '../../../../widgets/roundedInputField.dart';
import '../../../constants/constants.dart';
import '../../../widgets/alreadyHaveAnAccountCheck.dart';
import '../../../widgets/roundedButton.dart';
import '../../../widgets/roundedPasswordField.dart';
import '../../Login/login.dart';
import 'social_icon.dart';

class Body extends StatelessWidget {
  final Widget child;
  const Body({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SignupBg(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'SIGN UP',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: kPrimaryColor,
            ),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          SvgPicture.asset(
            'assets/icons/signup.svg',
            height: size.height * 0.42,
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          RoundedInputField(
            hintText: 'Your Email',
            icon: Icons.lock,
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          RoundedButton(
            text: 'SIGN UP',
            press: () {},
          ),
          AlreadyHaveAnAccountCheck(
            press: () {
              Navigator.of(context).pushReplacementNamed(LoginPage.routeName);
            },
            login: false,
          ),
          const OrDivider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialIcon(
                path: 'assets/icons/facebook.svg',
                press: () {},
              ),
              SocialIcon(
                path: 'assets/icons/google-plus.svg',
                press: () {},
              ),
              SocialIcon(
                path: 'assets/icons/twitter.svg',
                press: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
