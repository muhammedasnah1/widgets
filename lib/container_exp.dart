import 'package:flutter/material.dart';

class ContainerExp extends StatefulWidget {
  const ContainerExp({super.key});

  @override
  State<ContainerExp> createState() => ContainerExpState();
}

class ContainerExpState extends State<ContainerExp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: SafeArea(
        child: Center(
          child: Container(
            height: 200,
            width: 250,
            
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(35),
              border: Border.all(color: Colors.red,width: 2),
              boxShadow: [
                BoxShadow(blurRadius: 2,spreadRadius: 3,color: Colors.green)
              ],
              gradient: LinearGradient(colors: [
                Colors.lightBlue,
                Colors.orangeAccent,
                Colors.pinkAccent
              ], begin: AlignmentGeometry.topLeft,
              end: AlignmentGeometry.bottomRight),
              image: DecorationImage(
                  image: AssetImage("assets/p1.jpg"),
                  fit: BoxFit.cover
                  )
            ),
            alignment: Alignment.center,
            child: Container(
              // height: 100,
              // width: 100,
              decoration: BoxDecoration(
               
                
              ),
              child: Text(
                "Hello",
                style: TextStyle(fontSize: 35, color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
      );
  }
}