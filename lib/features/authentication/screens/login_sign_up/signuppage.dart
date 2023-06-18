import 'package:flutter/material.dart';
import 'package:learntoday/constants/lottie_anim.dart';
import 'package:learntoday/features/authentication/screens/login_sign_up/signup_form_widget.dart';
import 'package:lottie/lottie.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(8),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Column(
              children: [
                LottieBuilder.asset(
                  loginAnim,
                  height: size*.2,
                ),
                SignupForm()
              ],
            )
          ]),
        ),
      ),
    );
  }
}
