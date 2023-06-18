import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';
import 'package:learntoday/constants/lottie_anim.dart';
import 'package:learntoday/constants/strings.dart';
import 'package:learntoday/utils/theme/theme.dart';
import 'package:lottie/lottie.dart';
class DashboardHome extends StatefulWidget {
  const DashboardHome({super.key});

  @override
  State<DashboardHome> createState() => _DashboardHomeState();
}

class _DashboardHomeState extends State<DashboardHome> {
  @override
  Widget build(BuildContext context) {

    double imgSize = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text("Courses" , style: LearnTodayAppTheme.textStyle,),
              Divider(
                thickness: 2,
                color: Colors.grey,
              ),
              SizedBox(height: 20,),
               Expanded(
                 child: GridView.builder(
                  shrinkWrap: true,
              
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                  // itemCount: 7,
                  itemBuilder: (BuildContext context , index){

                    
                    return Container(
                      
                      decoration: BoxDecoration(
                      
                        borderRadius: BorderRadius.circular(8)
                      ),
                      width: double.infinity,
                      // height: 100,
                      child: Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Image.asset(testingImg , height: imgSize*.3 , width: double.infinity,),
                            SizedBox(height: 4,),
                            Text(onBoardingTitle1)
                            // SizedBox(height: 20,)
                          ],
                        ),
                      ),
                    );

                
                  }
                 ),
               )
              ]
              ),
          ),
        )),
    );
  }
}