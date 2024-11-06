import 'package:flutter/material.dart';


import '../theme/theme.dart';
import '../widgets/textfields.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(236, 230, 240, 1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Container(
                    width: 116,
                    height: 119,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/img_profile.png'),
                            fit: BoxFit.cover)),
                  ),
                  const SizedBox(height: 8),
                  const Text('Nama Lengkap',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Roboto')),
                  const Text('Asal Universitas',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Roboto')),
                ],
              ),
            ),
            const SizedBox(height: 22),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              color: const Color.fromRGBO(254, 247, 255, 1),
              child: const Column(
                children: [
                  CustomTextField(title: 'Email'),
                  CustomTextField(title: 'Nama'),
                  CustomTextField(title: 'Nomor Telepon'),
                  CustomTextField(title: 'Alamat'),
                  SizedBox(height: 30),
                ],
              ),
            ),
            const SizedBox(
              height: 27,
            ),
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
              child: const Text(
                'Ubah Profil',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
