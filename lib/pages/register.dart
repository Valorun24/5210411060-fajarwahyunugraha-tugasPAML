import 'package:flutter/material.dart';

import '../theme/theme.dart';
import '../widgets/textfields.dart';


class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

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
              Text('Daftar', style: titleTextStyle),
              const SizedBox(
                height: 46,
              ),
              const CustomTextField(title: 'Masukan Email', hint: 'Email'),
              const SizedBox(
                height: 17,
              ),
              const CustomTextField(
                  title: 'Masukan Password', hint: 'Password'),
              const SizedBox(
                height: 17,
              ),
              const CustomTextField(
                  title: 'Masukan kembali Password', hint: 'Password'),
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sudah memiliki akun ?',
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
                          Navigator.pushNamed(context, '/login');
                        },
                        child: Text(
                          'Masuk',
                          style: TextStyle(
                              color: primaryColor,
                              fontSize: 13,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 4,
                  backgroundColor: primaryColor,
                  minimumSize: const Size(218, 55),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text('Daftar',
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
