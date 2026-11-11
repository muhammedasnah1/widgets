import 'package:flutter/material.dart';

class WhatsappProfile extends StatefulWidget {
  const WhatsappProfile({super.key});

  @override
  State<WhatsappProfile> createState() => _WhatsappProfileState();
}

class _WhatsappProfileState extends State<WhatsappProfile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Scaffold(
        appBar: AppBar(
          leading: Card(
            color: Colors.grey.shade200,
            child: IconButton(onPressed: (){},
             icon: Icon(Icons.search),padding: EdgeInsets.all(.5),),
          )
        ),
      ),
    );
  }
}