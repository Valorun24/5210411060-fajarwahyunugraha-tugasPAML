import 'package:flutter/material.dart';

import '../theme/theme.dart';
import '../widgets/textfields.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 48),
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Image.asset(
                'assets/images/logo-responsi.png',
                width: 252,
                height: 96,
              ),
              const SizedBox(
                height: 40,
              ),
              Text('Masuk', style: titleTextStyle),
              const SizedBox(
                height: 50,
              ),
              const CustomTextField(title: 'Masukan Email', hint: 'Email'),
              const SizedBox(
                height: 41,
              ),
              const CustomTextField(
                  title: 'Masukan Password', hint: 'Password'),
              const SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Belum punya akun?',
                          style: TextStyle(
                              color: mainTextColor,
                              fontSize: 13,
                              fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/register');
                          },
                          child: Text(
                            'Daftar',
                            style: TextStyle(
                                color: primaryColor,
                                fontSize: 13,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/forget-password');
                      },
                      child: Text(
                        'Lupa password?',
                        style: TextStyle(
                            color: primaryColor,
                            fontSize: 13,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/dashboard', (route) => false);
                },
                style: ElevatedButton.styleFrom(
                  elevation: 4,
                  backgroundColor: primaryColor,
                  minimumSize: const Size(218, 55),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text('Masuk',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w600)),
              ),
              const SizedBox(
                height: 91,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
