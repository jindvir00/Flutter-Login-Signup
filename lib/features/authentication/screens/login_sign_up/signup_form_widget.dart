import 'package:flutter/material.dart';
import 'package:learntoday/features/authentication/screens/dashboard/dashboardpage.dart';
import 'package:learntoday/features/authentication/screens/login_sign_up/loginpage.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/strings.dart';
import '../../../../utils/theme/theme.dart';

class SignupForm extends StatefulWidget {
  SignupForm({
    super.key,
  });

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  bool _passwordvisible = true;

  void inContact(TapDownDetails details) {
    setState(() {
      _passwordvisible = false;
    });
  }

  void outContact(TapUpDetails details) {
    setState(() {
      _passwordvisible = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person_outline_outlined),
                  labelText: username,
                  hintText: username,
                  focusColor: Colors.black,
                  prefixIconColor: Colors.black45,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12))),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined),
                  labelText: labelText,
                  hintText: labelText,
                  focusColor: Colors.black,
                  prefixIconColor: Colors.black45,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12))),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              keyboardType: TextInputType.visiblePassword,
              obscureText: _passwordvisible,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.fingerprint),
                  suffixIcon: IconButton(
                    icon: Icon(_passwordvisible
                        ? Icons.visibility
                        : Icons.visibility_off),
                    onPressed: () {
                      setState(
                        () {
                          _passwordvisible = !_passwordvisible;
                        },
                      );
                    },
                  ),
                  labelText: passwordText,
                  hintText: passwordText,
                  focusColor: Colors.black,
                  prefixIconColor: Colors.black45,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12))),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              height: 42,
              child: ElevatedButton(
                  style: OutlinedButton.styleFrom(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                    backgroundColor: Colors.deepPurple,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DashboardHome()));
                  },
                  child: Text(
                    signUp,
                    style: LearnTodayAppTheme.textStyleBtn,
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: Text("Already have an account?",
                    style: LearnTodayAppTheme.textStyle),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
