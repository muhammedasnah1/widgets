import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.green,
                      child:Center(
                        child: Text("Green",
                        style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                      ),),
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.red,
                      child: Center(
                        child: Text("Red",
                        style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.yellow,
                  child:Center(
                    child: Text("Yellow",
                    style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  ) ,
            
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.blue,
                      child: Center(
                        child: Text("Blue",
                        style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.black,
                      child: Center(
                        child: Text("Black",
                        style: TextStyle(fontSize: 25,
                        fontWeight: FontWeight.bold,color: Colors.white),),),),
                  ],
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}
