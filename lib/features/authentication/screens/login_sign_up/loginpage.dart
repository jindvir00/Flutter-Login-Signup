import 'package:flutter/material.dart';
import 'package:learntoday/constants/lottie_anim.dart';
import 'package:learntoday/constants/strings.dart';
import 'package:learntoday/features/authentication/screens/login_sign_up/signuppage.dart';
import 'package:learntoday/utils/theme/theme.dart';
import 'package:lottie/lottie.dart';

import 'login_form_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double loginAnimHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LottieBuilder.asset(
                  loginAnim,
                  height: loginAnimHeight * .2,
                ),
                Text(
                  loginTitle,
                  style: LearnTodayAppTheme.logoStyle,
                ),
                Text(
                  loginSubtitle,
                  style: LearnTodayAppTheme.textStyle,
                ),
                const LoginForm(),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Or",
                    style: LearnTodayAppTheme.textStyle,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 42,
                  child: OutlinedButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.g_mobiledata_rounded,
                      color: Colors.white,
                    ),
                    label: Text(
                      loginGoogle,
                      style: LearnTodayAppTheme.textStyleBtn,
                    ),
                    // child: Text(loginGoogle , style: LearnTodayAppTheme.textStyleBtn,),
                    style: OutlinedButton.styleFrom(
                      elevation: 0,
                      // foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                      backgroundColor: Colors.black87,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                    alignment: Alignment.center,
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(context, 
                          MaterialPageRoute(builder: (context) => SignupPage()));
                        },
                        child: Text(
                          newAccount,
                          style: LearnTodayAppTheme.textStyle,
                        )))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
