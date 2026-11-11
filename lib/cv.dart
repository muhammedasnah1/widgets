import 'package:flutter/material.dart';

class Cv extends StatefulWidget {
  const Cv({super.key});

  @override
  State<Cv> createState() => _CvState();
}

class _CvState extends State<Cv> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body:Center(
        child: Container(
          
          height: 300,
          width: 350,
          color: Colors.white70,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 50,
                  child: Text("NAME")
                  
                ),
                Text(": Asnah"),
              ],
              
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 50,
                    child: Text("AGE"),
                  ),
                  Text(": 21")
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 50,
                    child: Text("PLACE"),
                  ),
                  Text(": perinthalmanna")
                ],
              ),
             Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 50,
                    child: Text("OFFICE"),
                  ),
                  Text(": Oxdo")
                ],
              ),

            ],
          ),
        ),
      ),
      
      
    );
  }
}