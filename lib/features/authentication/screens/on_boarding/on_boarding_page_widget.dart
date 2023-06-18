import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/strings.dart';
import '../../models/model_on_boarding.dart';

class OnBoardingPageWidget extends StatelessWidget {
  const OnBoardingPageWidget({
    super.key,
    required this.model,
  });

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: model.bgColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              LottieBuilder.asset(
                model.anim,
                height: model.height*0.5,
              ),
              Column(
                children: [
                  Text(model.title,
                      style: GoogleFonts.aleo(
                          color: onBoardingTextColor1,
                          fontWeight: FontWeight.bold,
                          fontSize: 24)),
                  Text(
                      model.subtitle,
                      style: GoogleFonts.aleo(
                          color: onBoardingTextColor1Light,
                          fontWeight: FontWeight.bold,
                          fontSize: 12)),
                ],
              ),
              Text(
                model.counterText,
                style: const TextStyle(
                    color: onBoardingTextColor1,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 80,
              )
            ]),
      ),
    );
  }
}