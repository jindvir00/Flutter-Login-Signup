import 'package:flutter/material.dart';
import 'package:learntoday/features/authentication/screens/login_sign_up/signuppage.dart';
import 'package:learntoday/utils/theme/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: LearnTodayAppTheme.lighTheme,
      darkTheme: LearnTodayAppTheme.darkTheme,
      themeMode: ThemeMode.light,
      home: SignupPage()
    );
  }
}
