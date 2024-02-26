import 'package:flutter/material.dart';
import 'package:login_signup_2/screens/signin_screen.dart';
import 'package:login_signup_2/screens/signup_screen.dart';
import 'package:login_signup_2/theme/theme.dart';
import 'package:login_signup_2/widgets/custom_scaffold.dart';
import 'package:login_signup_2/widgets/welcome_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        children: [
          Flexible(
              flex: 6,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 40.0,
                ),
                child: Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      children: [
                        TextSpan(
                            text: 'Health Care!\n',
                            style: TextStyle(
                              fontSize: 55.0,
                              fontFamily: 'Amaranth',
                              color: Colors.white ,
                              fontWeight: FontWeight.w600,
                              
                            )),
                        TextSpan(
                            text:
                                '\nThe greatest wealth is health',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Amaranth',
                              // height: 0,
                            ))
                      ],
                    ),
                  ),
                ),
              )),
          Flexible(
            flex: 1,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Row(
                children: [
                  const Expanded(
                    child: WelcomeButton(
                      buttonText: 'Sign in',
                      onTap: SignInScreen(),
                      color: Colors.transparent,
                      textColor: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: WelcomeButton(
                      buttonText: 'Sign up',
                      onTap: const SignUpScreen(),
                      color: Colors.white,
                      textColor: lightColorScheme.primary,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
