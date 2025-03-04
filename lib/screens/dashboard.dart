import 'package:flutter/material.dart';
import 'package:todo/res/values/string/custom_string.dart';
import 'package:todo/screens/navigation/deliveries.dart';
import 'package:todo/screens/navigation/home_screen.dart';
import 'package:todo/screens/navigation/tracking.dart';
import 'package:todo/screens/navigation/wallet/wallet.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _Dashboard(),
    );
  }
}

class _Dashboard extends StatefulWidget {
  const _Dashboard({super.key});

  @override
  State<_Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<_Dashboard> {

  int _selectedIndex  = 0;

  final List<Widget> _screens = [
    Center(child: HomeScreen()),
    Center(child: Deliveries()),
    Center(child: Wallet()),
    Center(child: Tracking()),
  ];


  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue.shade900,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(icon: Image.asset("assets/images/home.png"), label: CustomString.Home),
          BottomNavigationBarItem(icon: Image.asset("assets/images/deliveries.png"), label: CustomString.Deliveries),
          BottomNavigationBarItem(icon: Image.asset("assets/images/wallet.png"), label: CustomString.Wallet),
          BottomNavigationBarItem(icon: Image.asset("assets/images/location.png"), label: CustomString.Location),
        ],
      ),
      body: _screens[_selectedIndex],
    );
  }
}



