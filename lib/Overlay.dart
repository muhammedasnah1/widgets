import 'package:flutter/material.dart';

class Overlay1 extends StatefulWidget {
  const Overlay1({super.key});

  @override
  State<Overlay1> createState() => _Overlay1State();
}

class _Overlay1State extends State<Overlay1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IconButton(
          onPressed: () {
            final overlay = Overlay.of(context);

            final entry = OverlayEntry(
              builder : (context) => Positioned(
               top: 500,
               right: 10,
               child: Material(
                elevation: 4,
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.white,
                  child: Text("PowerOff"),
                ),
               ),
                )
            );
            overlay.insert(entry);
          },
          
          icon: Icon(Icons.add)
        ),
      ),
    );
  }
}
