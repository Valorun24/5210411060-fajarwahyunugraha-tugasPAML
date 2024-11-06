import 'package:flutter/material.dart';

import '../theme/theme.dart';
import '../widgets/textfields.dart';


class ForgetPasswordPage extends StatelessWidget {
  const ForgetPasswordPage({super.key});

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
              Text('Lupa Password', style: titleTextStyle),
              const SizedBox(
                height: 45,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Pesan',
                        style: TextStyle(
                            color: mainTextColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w600)),
                    Text(
                        'Masukan email Anda dan tunggu kode etik akan dikirimkan.',
                        style: TextStyle(
                            color: mainTextColor,
                            fontSize: 13,
                            fontWeight: FontWeight.w400)),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const CustomTextField(title: 'Masukan Email', hint: 'Email'),
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
                child: const Text('Kirim',
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
