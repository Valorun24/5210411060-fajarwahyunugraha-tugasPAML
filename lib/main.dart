import 'package:flutter/material.dart';
import 'package:responsi/pages/dashboard.dart';
import 'package:responsi/pages/edit_profile.dart';
import 'package:responsi/pages/forget_password.dart';
import 'package:responsi/pages/login.dart';
import 'package:responsi/pages/register.dart';
import 'package:responsi/pages/splashscreen.dart';
import 'package:responsi/theme/theme.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        scaffoldBackgroundColor: backgroundColor,
        colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
        useMaterial3: true,
      ),
      home: const SplashscreenPage(),
      initialRoute: '/splashscreen',
      routes: {
        '/splashscreen': (context) => const SplashscreenPage(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/forget-password': (context) => const ForgetPasswordPage(),
        '/dashboard': (context) => const DashboardPage(),
        '/edit-profile': (context) => const EditProfilePage(),
      },
    );
  }
}
