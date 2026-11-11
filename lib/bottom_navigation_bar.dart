import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:my_second_flutter/GridViewPage.dart';
import 'package:my_second_flutter/WhatsAppChat.dart';
import 'package:my_second_flutter/WhatsAppUpdates.dart';
// import 'package:my_second_flutter/fruit_details_screen.dart';
import 'package:my_second_flutter/order_screen_page.dart';

class BottomNavigationBar1 extends StatefulWidget {
  const BottomNavigationBar1({super.key});
   
  @override
  State<BottomNavigationBar1> createState() => _BottomNavigationBar1State();
}

class _BottomNavigationBar1State extends State<BottomNavigationBar1> {
  List<Widget> screen = [
    Whatsappchat(),
    Whatsappupdates(),
    Gridviewpage(),
    OrderScreenPage(),
    
  ];
  int selectedIndex= 0;
  // ignore: non_constant_identifier_names
  GlobalKey<CurvedNavigationBarState> navigation_curved =GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        elevation: 3,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        currentIndex: selectedIndex,
        selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.chat),label: "Chats"),
          BottomNavigationBarItem(icon: Icon(Icons.update_sharp),label: "Updates"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile")
        ],
      )
        
    );
  }
}