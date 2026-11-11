import 'package:flutter/material.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(height: 50,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15,right: 10),
                    child: Container(
                      height: 100,
                      width: 200,
                      color: Colors.green,
                    ),
                  ),
                  SizedBox(width: 15,),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Container(
                      height: 100,
                      width: 200,
                      color: Colors.yellow,
                    ),
                  ),
                  SizedBox(width: 15,),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Container(
                      height: 100,
                      width: 200,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(width: 15,),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Container(
                      height: 100,
                      width: 200,
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(width: 15,),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Container(
                      height: 100,
                      width: 200,
                      color: Colors.pink,
                    ),
                  ),
                  SizedBox(width: 15,),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Container(
                      height: 100,
                      width: 200,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 15,),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Container(
                      height: 100,
                      width: 200,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(width: 15,),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Container(
                      height: 100,
                      width: 200,
                      color: Colors.brown,
                    ),
                  ),
                  SizedBox(width: 15,),
                ],
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              style: TextStyle(color: Colors.brown),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.grey.shade500)
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.grey.shade500)
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.grey.shade500)
                ),
                prefixIcon: Icon(Icons.search),
                fillColor: Colors.pinkAccent.shade100,
                filled: true,
                hint: Text("Search here...",style: TextStyle(color: Colors.grey),),
                labelText: "Search",
              ),
            )
          ],
        ),
      ),
    );
  }
}