import 'package:flutter/material.dart';

class BottonExp extends StatefulWidget {
  const BottonExp({super.key});

  @override
  State<BottonExp> createState() => _BottonExpState();
}

class _BottonExpState extends State<BottonExp> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body:Center(
          child: Column(
            children: [
              ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff8E1EA2),
                
              ),
               child: Text("click",style: TextStyle(color: Colors.white),)),
               TextButton(onPressed: (){},
               style: TextButton.styleFrom(backgroundColor: Colors.blue,),
                child: Text("click")),
                IconButton(onPressed: (){},
                 icon: Icon(Icons.wifi),style: IconButton.styleFrom(
                  backgroundColor: Color(0xffFFCA88)
                 )),
                 OutlinedButton(onPressed: (){},
                  child: Text("click")),
                  CircleAvatar(radius: 50,
                  backgroundImage: AssetImage("assets/p1.jpg",),),
              Stack(
                children: [
                  Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.yellow,
                    image: DecorationImage(image: AssetImage("assets/p1.jpg"),
                    fit: BoxFit.fill
                    )
                  ),
                  // alignment: Alignment.bottomRight,
                  // child: IconButton(onPressed: (){}, icon: Icon(Icons.edit,color: Colors.white,)),
                ),
                Positioned(
                  bottom: -6,
                  right: 0,
                  child: IconButton(
                    onPressed: (){}, icon: Icon(Icons.edit,color: Colors.white,),
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.green
                    ),
                    )
                    )
                
                ]
              )
            ],
          ),
        ),
         
      ),
    );
  }
}