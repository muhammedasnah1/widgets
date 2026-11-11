import 'package:flutter/material.dart';

class Gesture extends StatefulWidget {
  const Gesture({super.key});

  @override
  State<Gesture> createState() => _GestureState();
}
bool click = false;
class _GestureState extends State<Gesture> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home"),
      ),
      body: Center(
        child: GestureDetector(
          onDoubleTap: () {
            setState(() {
              click = !click;
            });
            
            print("click");
          },
          
          child: Container(
            height: 100,
            width: 100,
            color: click?Colors.blue:Colors.red,
            child: Center(
              child: Text("click me",
              style: TextStyle(color: Colors.black),),
            ),
          ),
        ),
      ),
    );
  }
}