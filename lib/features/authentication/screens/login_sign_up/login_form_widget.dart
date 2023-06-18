import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/strings.dart';
import '../../../../utils/theme/theme.dart';


class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      
      child:Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person_outline_outlined),
                labelText: labelText,
                hintText: labelText,
                focusColor: Colors.black,
                prefixIconColor: Colors.black45,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))
                
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.fingerprint),
                suffixIcon: Icon(Icons.remove_red_eye_rounded),
                labelText: passwordText,
                hintText: passwordText,
                focusColor: Colors.black,
                prefixIconColor: Colors.black45,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))
                
              ),
            ),
              SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(onPressed: (){},
               child: Text("Forgot Password?" , 
               style: LearnTodayAppTheme.textStyle),),
            ),

            SizedBox(
              width: double.infinity,
              height: 42,
              child: ElevatedButton(
                style: OutlinedButton.styleFrom(
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4)),
              backgroundColor: Colors.black87,
            ),
                onPressed: (){},
                child: Text(login , style: LearnTodayAppTheme.textStyleBtn,)),
            ),
        ],),
      ), 
    );
  }
}
