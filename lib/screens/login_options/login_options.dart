import 'package:flutter/material.dart';
import 'package:steadycallendar/components/sc_flat_button.dart';
import 'package:steadycallendar/components/sc_image_button.dart';
import 'package:steadycallendar/config/styles.dart';
import 'package:steadycallendar/screens/cal_pager/cal_pager.dart';

class LoginOptions extends StatelessWidget {
  const LoginOptions({super.key});
  static const String routeName = '/intro/login_options';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/pink-plants@3x.png'),
                  fit: BoxFit.cover),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 0.5),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SCFlatButton(
                const SCImageButton('assets/images/google-logo-9808.png',
                    'Continue with Google'),
                textColor: Styles.primaryTextColor,
                backgroundColor: Colors.white,
                onTap: () => _signupTapped(context),
              ),
            ),
          )
        ],
      ),
    );
  }

  Future _signupTapped(BuildContext context) async {
    Navigator.of(context).pushNamed(CalPager.routeName);
  }
}
