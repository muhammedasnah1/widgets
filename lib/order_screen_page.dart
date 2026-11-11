import 'package:flutter/material.dart';

class OrderScreenPage extends StatefulWidget {
  const OrderScreenPage({super.key});

  @override
  State<OrderScreenPage> createState() => _OrderScreenPageState();
}

class _OrderScreenPageState extends State<OrderScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){},
         icon: Icon(Icons.arrow_back_ios_new)),
         actions: [
          IconButton(onPressed: (){},
           icon: Icon(Icons.search))
         ],
      ),
      body:Padding(
        padding: const EdgeInsets.only(left: 15,right: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("My Orders",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(20)),
                    child: Text("Delivered",style: TextStyle(color: Colors.white,fontSize: 15))),
                  Text("Processing",style: TextStyle(fontSize: 15),),
                  Text("Cancelled",style: TextStyle(fontSize: 15)),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Card(
                elevation: 3,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: Colors.white,),
                  padding: EdgeInsets.all(15),
                  height: 170,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Order No1947034",style: TextStyle(
                            fontWeight: FontWeight.bold,fontSize: 18),),
                            Text("05-12-2019")
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text("Traking number:",style: TextStyle(fontSize: 15),),
                          SizedBox(width: 5),
                          Text("IW3475453455",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text("Quality:",style: TextStyle(fontSize: 15),),
                          SizedBox(width: 5,),
                          Text("3",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                          Spacer(),
                          Text("Total Amount:",style: TextStyle(fontSize: 15),),
                          SizedBox(width: 5,),
                          Text("112\$",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          OutlinedButton(onPressed: (){},
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.white,
                            visualDensity: VisualDensity.compact,
                            padding: EdgeInsets.symmetric(horizontal: 15)
                            ),
                           child: Text("Details",style: TextStyle(color: Colors.black,fontSize: 15),)),
                           Text("Delivered",style: TextStyle(
                            fontWeight: FontWeight.bold,color: Colors.green,fontSize: 18)),
                        ],
                      )
                    ],
                  ),
                  
                             
                ),
              ),
              SizedBox(
                height: 20,
              ),
               Card(
                elevation: 3,
                 child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: Colors.white,),
                  padding: EdgeInsets.all(15),
                  height: 170,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Order No1947034",style: TextStyle(
                            fontWeight: FontWeight.bold,fontSize: 18),),
                            Text("05-12-2019")
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text("Traking number:",style: TextStyle(fontSize: 15),),
                          SizedBox(width: 5),
                          Text("IW3475453455",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text("Quality:",style: TextStyle(fontSize: 15),),
                          SizedBox(width: 5,),
                          Text("3",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                          Spacer(),
                          Text("Total Amount:",style: TextStyle(fontSize: 15),),
                          SizedBox(width: 5,),
                          Text("112\$",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          OutlinedButton(onPressed: (){},
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.white,
                            visualDensity: VisualDensity.compact,
                            padding: EdgeInsets.only(left: 10,right: 10)
                            ),
                           child: Text("Details",style: TextStyle(color: Colors.black,fontSize: 15),)),
                           Text("Delivered",style: TextStyle(
                            fontWeight: FontWeight.bold,color: Colors.green,fontSize: 18)),
                        ],
                      )
                    ],
                  ),
                  
                              
                   ),
               ),
              SizedBox(
                height: 20,
              ),
               Card(
                elevation: 3,
                 child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: Colors.white,),
                  padding: EdgeInsets.all(15),
                  height: 170,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Order No1947034",style: TextStyle(
                            fontWeight: FontWeight.bold,fontSize: 18),),
                            Text("05-12-2019")
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text("Traking number:",style: TextStyle(fontSize: 15),),
                          SizedBox(width: 5),
                          Text("IW3475453455",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text("Quality:",style: TextStyle(fontSize: 15),),
                          SizedBox(width: 5,),
                          Text("3",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                          Spacer(),
                          Text("Total Amount:",style: TextStyle(fontSize: 15),),
                          SizedBox(width: 5,),
                          Text("112\$",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          OutlinedButton(onPressed: (){},
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.white,
                            visualDensity: VisualDensity.compact,
                            padding: EdgeInsets.only(left: 10,right: 10)
                            ),
                           child: Text("Details",style: TextStyle(color: Colors.black,fontSize: 15),)),
                           Text("Delivered",style: TextStyle(
                            fontWeight: FontWeight.bold,color: Colors.green,fontSize: 18)),
                        ],
                      )
                    ],
                  ),
                  ),
               ),
            SizedBox(height: 15,),
            ListTile(
              leading: CircleAvatar(child: Text("A"),),
              title: Text("Hello"),
              subtitle: Text("Good Morning"),
              trailing: Icon(Icons.arrow_circle_right),
              tileColor: Colors.blueGrey.shade100,
              onTap: (){},

              )
            ],
          ),
        ),
      ),
      
    );
  }
}