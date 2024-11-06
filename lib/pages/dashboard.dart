import 'package:flutter/material.dart';
import 'package:responsi/pages/profile.dart';



import 'home.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int selectedIndex = 0;
  late List<Widget> tabs = [
    const HomePage(),
    const ProfilePage(),
    Container()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[selectedIndex],
      bottomNavigationBar: NavigationBar(
        backgroundColor: const Color.fromRGBO(243, 237, 247, 1),
        indicatorColor: const Color.fromRGBO(232, 222, 248, 1),
        selectedIndex: selectedIndex,
        onDestinationSelected: (int index) {
          if (index == 2) {
            Navigator.pushNamedAndRemoveUntil(
                context, '/login', (route) => false);
          }
          setState(() {
            selectedIndex = index;
          });
        },
        destinations: [
          NavigationDestination(
              icon: Image.asset(
                'assets/images/ic_star.png',
                width: 24,
                height: 24,
              ),
              selectedIcon: Image.asset(
                'assets/images/ic_star_filled.png',
                width: 24,
                height: 24,
              ),
              label: 'Home'),
          NavigationDestination(
              icon: Image.asset(
                'assets/images/ic_star.png',
                width: 24,
                height: 24,
              ),
              selectedIcon: Image.asset(
                'assets/images/ic_star_filled.png',
                width: 24,
                height: 24,
              ),
              label: 'Akun'),
          NavigationDestination(
              icon: Image.asset(
                'assets/images/ic_star.png',
                width: 24,
                height: 24,
              ),
              selectedIcon: Image.asset(
                'assets/images/ic_star_filled.png',
                width: 24,
                height: 24,
              ),
              label: 'Logout'),
        ],
      ),
    );
  }
}
