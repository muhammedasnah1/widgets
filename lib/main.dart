import 'package:flutter/material.dart';
import 'package:my_second_flutter/Expanded_Exp.dart';
import 'package:my_second_flutter/Gesturedetector.dart';
import 'package:my_second_flutter/GridViewPage.dart';
import 'package:my_second_flutter/Grid_view.dart';
import 'package:my_second_flutter/ListView.dart';
import 'package:my_second_flutter/Overlay.dart';
import 'package:my_second_flutter/Student_Profile.dart';
import 'package:my_second_flutter/WhatsAppChat.dart';
import 'package:my_second_flutter/WhatsAppUpdates.dart';
import 'package:my_second_flutter/bottomNavigation.dart';
import 'package:my_second_flutter/bottom_navigation_bar.dart';
import 'package:my_second_flutter/botton_exp.dart';
import 'package:my_second_flutter/container_exp.dart';
import 'package:my_second_flutter/container_exp2.dart';
import 'package:my_second_flutter/cv.dart';
import 'package:my_second_flutter/fruit_details_screen.dart';
import 'package:my_second_flutter/home.dart';
import 'package:my_second_flutter/home_screen.dart';
import 'package:my_second_flutter/login_screen.dart';
import 'package:my_second_flutter/modelClass/WhatsApp_profile.dart';
import 'package:my_second_flutter/order_screen_page.dart';
import 'package:my_second_flutter/profile_page.dart';
import 'package:my_second_flutter/screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        textTheme: TextTheme(
          headlineLarge: TextStyle(
            fontSize: 20,
            fontFamily: "Debrosee"
          ),
          bodyMedium: TextStyle(
            fontSize: 10,
          ),
        ),
       colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.deepPurple,
        brightness: Brightness.light
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        textTheme: TextTheme(
          headlineLarge: TextStyle(
            fontSize: 20,
            fontFamily: "Debrosee"
          ),
          bodyMedium: TextStyle(
            fontSize: 10,
          )
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark
          )
      ),
      home: WhatsappProfile(),
    );
  }
}

