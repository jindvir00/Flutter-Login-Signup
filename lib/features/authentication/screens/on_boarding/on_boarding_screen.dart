import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:learntoday/constants/colors.dart';
import 'package:learntoday/constants/lottie_anim.dart';
import 'package:learntoday/features/authentication/models/model_on_boarding.dart';
import 'package:learntoday/features/authentication/screens/login_sign_up/login_sign_up.dart';
import 'package:learntoday/features/authentication/screens/on_boarding/on_boarding_page_widget.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../constants/dimens.dart';
import '../../../../constants/strings.dart';

class OnBoardingScreen extends StatefulWidget {
   OnBoardingScreen(
    {super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
    final controller = LiquidController();

    int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final pages = [
      OnBoardingPageWidget(
          model: OnBoardingModel(
              anim: onBoardingAnim1,
              title: onBoardingTitle1,
              subtitle: onBoardingSubTitle1,
              counterText: '1/3',
              bgColor: onBoardingPage1,
              height: size.height)),
      OnBoardingPageWidget(
          model: OnBoardingModel(
              anim: onBoardingAnim2,
              title: onBoardingTitle2,
              subtitle: onBoardingSubTitle2,
              counterText: '2/3',
              bgColor: onBoardingPage2,
              height: size.height)),
      OnBoardingPageWidget(
          model: OnBoardingModel(
              anim: onBoardingAnim3,
              title: onBoardingTitle3,
              subtitle: onBoardingSubTitle3,
              counterText: '3/3',
              bgColor: onBoardingPage3,
              height: size.height)),
    ];


    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
              enableSideReveal: true,
              onPageChangeCallback: OnPageChangedCallback,
              liquidController: controller,
              slideIconWidget: const Icon(
                Icons.chevron_left_rounded,
                color: Colors.black87,
              ),
              pages: pages),
              Positioned(
                bottom: 80,
                child: OutlinedButton(
                  onPressed: (){
                    int nextPage = controller.currentPage + 1;
                    controller.animateToPage(page: nextPage);

                    if(nextPage == 3){
                      Navigator.push(context , MaterialPageRoute(
                        builder: (context) => const LoginSignUpPage()
                      ),);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(color: Colors.black26),
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(16),
                    onPrimary: Colors.white,
                  ),
                  child: Container(
                    padding: EdgeInsets.all(16),
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle
                    ),
                    child: Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                child: AnimatedSmoothIndicator(
                activeIndex: controller.currentPage,
                count: 3,
                effect: ScaleEffect(
                  activeDotColor: Colors.black,
                  dotHeight: 5
                ),
              ))
        ],
        
      ),
    );
  }

  void OnPageChangedCallback(int activePageIndex) {

    setState(() {
    currentPage = activePageIndex; 
    // if(currentPage > )
    });
  }
}
