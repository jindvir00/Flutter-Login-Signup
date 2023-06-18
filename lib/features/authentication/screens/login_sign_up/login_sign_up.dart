import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learntoday/constants/lottie_anim.dart';
import 'package:learntoday/constants/strings.dart';
import 'package:learntoday/features/authentication/screens/login_sign_up/loginpage.dart';
import 'package:learntoday/features/authentication/screens/login_sign_up/signup_form_widget.dart';
import 'package:learntoday/features/authentication/screens/login_sign_up/signuppage.dart';
import 'package:lottie/lottie.dart';

import '../../../../constants/colors.dart';

class LoginSignUpPage extends StatelessWidget {
  const LoginSignUpPage({super.key});


  @override
  Widget build(BuildContext context) {
  double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              LottieBuilder.asset(onBoardingAnim1, height: height*.5,),
              Column(
                children: [
                  Text(welcomeTitle,
                      style: GoogleFonts.aleo(
                          color: onBoardingTextColor1,
                          fontWeight: FontWeight.bold,
                          fontSize: 24)),
                  Text(welcomeSubtitle,
                      style: GoogleFonts.aleo(
                          color: onBoardingTextColor1Light,
                          fontWeight: FontWeight.bold,
                          fontSize: 12)),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                          onPressed: () {
                            Navigator.push(context, 
                            MaterialPageRoute(builder: (context) => LoginPage()));
                          },
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4)),
                            foregroundColor: onBoardingTextColor1,
                          ),
                          child: Text(login.toUpperCase(),
                              style: GoogleFonts.aleo(
                                  color: onBoardingTextColor1Light,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12))),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: ElevatedButton(
                          style: OutlinedButton.styleFrom(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4)),
                            backgroundColor: onBoardingTextColor1,
                          ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage()));
                      },
                      child: Text(signUp.toUpperCase(),
                          style: GoogleFonts.aleo(
                              // color: onBoardingTextColor1Light,
                              fontWeight: FontWeight.bold,
                              fontSize: 12)),
                    )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
