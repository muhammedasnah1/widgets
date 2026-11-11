import 'package:flutter/material.dart';

class ContainerExp2 extends StatefulWidget {
  const ContainerExp2({super.key});
  @override
  State<ContainerExp2> createState() => _ContainerExp2State();
}
class _ContainerExp2State extends State<ContainerExp2> {
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
            color: Colors.pink,
            borderRadius: BorderRadius.circular(35),
            border: Border.all(color:Colors.white,width: 1),
            boxShadow: [
              BoxShadow( blurRadius:2,spreadRadius:3,color: Colors.black)
            ],
            gradient: LinearGradient(colors: [
              Colors.green,
              Colors.blue,
              Colors.red,
              ],
              begin:AlignmentGeometry.topRight,
            end: AlignmentGeometry.bottomLeft,
            )
          ),
          alignment: Alignment.center,  
          child: Text("Hello",
          
          style: TextStyle(fontSize: 30,color:  Colors.yellow,fontWeight:FontWeight.bold)
          ),
          ),
        ),
      ),
    );
  }
}