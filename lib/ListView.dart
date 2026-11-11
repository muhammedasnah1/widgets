import 'package:flutter/material.dart';

class Listview1 extends StatefulWidget {
  const Listview1({super.key});

  @override
  State<Listview1> createState() => _Listview1State();
}

class _Listview1State extends State<Listview1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: ListView.builder(
      //   physics: NeverScrollableScrollPhysics(),
      //   itemCount: 25,
      //   itemBuilder:(context,index){
      //     return ListTile(
      //       title: Text('item${index+1}'),
      //     );
      //   })
//   (children:[
//     ListTile(
//       leading: Icon(Icons.map),
//       title: Text('Map'),
//     ),
//     ListTile(
//       leading: Icon(Icons.photo_album),
//       title: Text('Album'),
//     ),
//     ListTile(
//       leading: Icon(Icons.camera),
//       title: Text("Camera"),
//     )
//   ],
// ),

      // ListView.builder(
      //   itemCount: 20,
      //   itemBuilder: (context,intex){
      //     return ListTile(
      //       title: Text("item${intex+1}"),
      //     );
      //   },
      //   )
      // (
      //   physics: NeverScrollableScrollPhysics(),
      //   children: [
      //     ListTile(title: Text("Asnah"),),
      //     ListTile(title: Text("Anshid"),),
      //     ListTile(title: Text("Fawas"),),
      //     ListTile(title: Text("Muhsin"),)
      //   ],
      // ),
      // body:ListView.builder(
      //   itemCount: 10,
      //   itemBuilder:(context,index){
      //     return ListTile(
      //       title: Text('item$index'),
      //     );
      //   }),
      // body: ListView(
      //   children: [
      //     ListTile(
      //       leading: Icon(Icons.camera),
      //       title: Text('Camera'),
      //     ),
      //     ListTile(
      //       leading: Icon(Icons.phone),
      //       title: Text('phone'),
      //     ),
      //     ListTile(
      //       leading: Icon(Icons.person),
      //       title: Text('person'),
      //     )
      //   ],
      // ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('item$index'),
          );
        },
      ),
    );
  }
}