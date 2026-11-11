import 'package:flutter/material.dart';
import 'package:my_second_flutter/container_exp.dart';
import 'package:my_second_flutter/home_screen.dart';
import 'package:my_second_flutter/login_screen.dart';
import 'package:my_second_flutter/order_screen_page.dart';
import 'package:my_second_flutter/profile_page.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {

List<Widget> screens = [
  HomeScreen(),
  ContainerExp(),
  OrderScreenPage(),
  LoginScreen(),
  ProfilePage()
];

int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        currentIndex: selectedIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(
            Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(
              Icons.trolley),label: "Shop"),
              BottomNavigationBarItem(icon: Icon(
                Icons.shopping_bag),label: "Bag"),
                BottomNavigationBarItem(icon: Icon(
                  Icons.favorite_sharp),label: "Favorite"),
                  BottomNavigationBarItem(icon: Icon(
                    Icons.person ),label: "Person")
           
        
        ],
      ),
    );
  }
}