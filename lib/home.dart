// import 'package:flutter/material.dart';
// import 'package:my_second_flutter/main.dart';

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {

//   int count = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blue.shade100,
//       appBar: AppBar(
//         backgroundColor: Colors.blueAccent,
//       title:Text("MY APP",
//       style: TextStyle(color:Colors.white),
//       ),
//       centerTitle: true,
//        ),
//       body:Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
          
//           children: [
//             Text("HELLO"),
//             Text(" $count")
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: (){
//           setState(() {
//             count++;
//           });
         
//           print("count is $count");
//           },
//       child: Icon(Icons.add),
//       ),
//       drawer: Drawer(

//         child: ListView(
//           children: <Widget>[
//             ListTile(title: Text("item 1"),),
//             ListTile(title: Text("item 2"),),
//           ],
//         ),
//       ),
// bottomNavigationBar: BottomNavigationBar(
//   items:[
//     BottomNavigationBarItem(icon: Icon(Icons.home),label: "HOME"),
// BottomNavigationBarItem(icon: Icon(Icons.settings),label: "SETTINGS"),
// ]),
// persistentFooterButtons: [
//   ElevatedButton(onPressed:(){},
//   child: Text("botton 1")
//   ),
//   ElevatedButton(onPressed:(){}, child: Text("botton 2")
//   )

// ],
//        );
//   }
// }