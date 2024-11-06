import 'package:flutter/material.dart';

import '../theme/theme.dart';


class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
              color: const Color.fromRGBO(254, 247, 255, 1),
              child: Column(
                children: [
                  ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, '/edit-profile');
                    },
                    contentPadding: const EdgeInsets.only(left: 32, right: 19),
                    title: const Text('Kelola Akun',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Roboto')),
                    trailing: const Icon(Icons.arrow_forward_outlined),
                  ),
                  ListTile(
                    onTap: () {},
                    contentPadding: const EdgeInsets.only(left: 32, right: 19),
                    title: const Text('Notifikasi',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Roboto')),
                    trailing: const Icon(Icons.arrow_forward_outlined),
                  ),
                  ListTile(
                    onTap: () {},
                    contentPadding: const EdgeInsets.only(left: 32, right: 19),
                    title: const Text('Privacy Policy',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Roboto')),
                    trailing: const Icon(Icons.arrow_forward_outlined),
                  ),
                  ListTile(
                    onTap: () {},
                    contentPadding: const EdgeInsets.only(left: 32, right: 19),
                    title: const Text('Terms of Service',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Roboto')),
                    trailing: const Icon(Icons.arrow_forward_outlined),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
