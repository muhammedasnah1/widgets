import 'package:flutter/material.dart';

class ExpandedExp extends StatefulWidget {
  const ExpandedExp({super.key});

  @override
  State<ExpandedExp> createState() => _ExpandedExpState();
}

class _ExpandedExpState extends State<ExpandedExp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.amber,
              child: Text("Asnah",style: TextStyle(fontSize: 40),),
            ),
          ),
          Flexible(
            child: Container(
              color: Colors.blue,
              child: Text(
                "blue",style: TextStyle(fontSize: 40),),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.green,
              child: Text(
                "green",style: TextStyle(fontSize: 40),),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.red,
              child: Text(
                "red",style: TextStyle(fontSize: 40),),
            ),
          )
        ],
      ),
    );
  }
}