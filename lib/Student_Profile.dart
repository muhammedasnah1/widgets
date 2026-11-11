import 'package:flutter/material.dart';

class StudentProfile extends StatefulWidget {
  const StudentProfile({super.key});

  @override
  State<StudentProfile> createState() => _StudentProfileState();
}

class _StudentProfileState extends State<StudentProfile> {
  OverlayEntry? entry;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
               Stack(
                children: [
                  
                   CircleAvatar(
                        radius: 70,
                        backgroundImage: AssetImage("assets/cr7.png"),
                      ),
                 
                  Positioned(
                  bottom: 8,
                  right: 4,
                  // child: Icon(Icons.add_circle,color: Colors.green,size: 40,),
                  child: IconButton(onPressed: (){
                    if (entry != null) return;
                    final overlay = Overlay.of(context);

                  entry = OverlayEntry(
                      builder: (overlaycontext) => Positioned(
                        top: 500,
                        right: 20,
                        child: Material(
                          elevation: 4,
                         child: Container(
                          padding: EdgeInsets.all(20),
                          color: Colors.white,
                          child: Column(
                            children: [
                              Text("PROFILE UPDATED"),
                              TextButton(onPressed: (){
                                entry?.remove();
                                entry=null;
                              },
                               child: Text("OK"))
                            ],
                          ),
                         ),
                        ),
                      ),);
                      overlay.insert(entry!);
                  }, icon: Icon(Icons.add_circle,
                  color: Colors.green,size: 40,)),
                 ),
                ]
               ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Name",
                              style: Theme.of(context).textTheme.headlineLarge,
                            ),
                            Text(":",
                              style: Theme.of(context).textTheme.headlineLarge)
                          ],
                        ),
                      ),
                      // SizedBox(width: 15),
                      Text(
                        " Asnah",
                         style: Theme.of(context).textTheme.headlineLarge)
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Phone",
                              style: Theme.of(context).textTheme.headlineLarge,
                            ),
                            Text(":",
                              style: Theme.of(context).textTheme.headlineLarge)
                          ],
                        ),
                      ),
                      Text(
                        " 9539100863",
                        style: Theme.of(context).textTheme.headlineLarge)
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "DOB",
                              style: Theme.of(context).textTheme.headlineLarge,
                            ),
                            Text(":",
                              style: Theme.of(context).textTheme.headlineLarge)
                          ],
                        ),
                      ),
                      Text(
                        " 02-10-2005",
                         style: Theme.of(context).textTheme.headlineLarge
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Address",
                              style: Theme.of(context).textTheme.headlineLarge,
                            ),
                            Text(":",
                              style: Theme.of(context).textTheme.headlineLarge)
                          ],
                        ),
                      ),
                      Flexible(
                        child: Text(
                          " Meleppattuthodi (H), koppam ",
                           style: Theme.of(context).textTheme.headlineLarge
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                leading: CircleAvatar(
                  radius: 30,
                  child: Icon(Icons.person),
                ),
                title: Text("Muhammed", style: Theme.of(context).textTheme.headlineLarge
                ),
                subtitle: Row(
                  children: [
                    Text("hiiii",style: TextStyle(
                      fontSize: 15
                    ),),
                    Icon(Icons.handshake)
                  ],
                ),
                trailing: Column(
                  children: [
                    Text("yesterday"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
