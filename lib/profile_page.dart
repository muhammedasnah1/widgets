import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    print("height is $height");
    print("height is $width");

    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        scrolledUnderElevation: 10,
        leading: IconButton(onPressed: (){},
                 icon: Icon(Icons.arrow_back,),
                 style: IconButton.styleFrom(
                  backgroundColor: Colors.grey.shade300
                 ),),
        actions: [
          
                
                 
                 
                 IconButton(onPressed: (){},
                  icon: Icon(Icons.share),
                  style: IconButton.styleFrom(
                  backgroundColor: Colors.grey.shade300
                 )),
                  IconButton(onPressed: (){},
                   icon: Icon(Icons.more_horiz),
                   style: IconButton.styleFrom(
                  backgroundColor: Colors.grey.shade300
                 ))
              
          
        ],
      ),
                body: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Container(height: 120,width: 120,color: Colors.transparent,
                            child: Container(
                              height: 100,
                              width: 100,
                              alignment: Alignment.bottomRight,
                               decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.grey,
                                image: DecorationImage(image: AssetImage("assets/p1.jpg"),
                                fit: BoxFit.fill),
                            ),
                            
                                ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: IconButton(
                              onPressed: (){},
                              style: IconButton.styleFrom(backgroundColor: Colors.black,),
                             icon: Icon(Icons.verified,color: Colors.white,),
                             ),)
                          ]
                        ),
                        SizedBox(height: 10),
                        Text("Alexandra Chen",style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 15),),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Product Designer based in San Francisco."),
                        Text("Creating digital experiences for tomorrow."),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                
                                Text("12.5k",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                Text("482",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                                Text("104",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text("Followers",),
                                Text("Following"),
                                Text("posts"),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(onPressed: (){},
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.black,
                              minimumSize:  Size(width*0.75,40,),
                            ),
                             child: Text("Edit Profile",style: TextStyle(color: Colors.white,
                             ),)),
                             IconButton(onPressed: (){},
                             
                              icon: Icon(Icons.settings),
                              style: IconButton.styleFrom(
                                backgroundColor: Colors.white,
                              ),)
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          
                          mainAxisAlignment: MainAxisAlignment. spaceBetween,
                          children: [
                            Container(
                              
                              height: 110,
                              width: 150,
                              
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(color: Colors.black,blurRadius: 2)
                              ],
                              color: Colors.white),
                              padding: EdgeInsets.all(10),
                              child:Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  
                                   IconButton(onPressed: (){},
                                   
                               icon: Icon(Icons.account_balance_wallet,),
                              
                               style: IconButton.styleFrom(
                                backgroundColor: Colors.grey.shade300,
                               ) ,),
                                Text("Wallet"),
                              
                               
                                Text("\$24,500.00",)
                                ],
                              )
                               ),
                            
                             Container(
                              height: 110,
                              width: 150,
                              
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(color: Colors.black,blurRadius: 2)
                              ],
                              color: Colors.white),
                              child:Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                     IconButton(onPressed: (){},
                                 icon: Icon(Icons.account_balance_wallet),
                                 style: IconButton.styleFrom(
                                  backgroundColor: Colors.grey.shade300,
                                 ) ,),
                                  Text("Insights"),
                                  Text("+12% Growth")
                                  ],
                                ),
                              )
                               ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        
                        Align(alignment: AlignmentGeometry.centerLeft,
                          child: Text("Recent Activity",style: TextStyle(
                            fontWeight: FontWeight.bold,fontSize: 18),
                            
                          ),
                        ),SizedBox(
                          height: 10,
                        ),
                        Card(
                          elevation: 3,
                          margin: EdgeInsets.symmetric(horizontal: 3),
                          child: Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                             ),
                            height: 210,
                            // width: 300,
                            padding: EdgeInsets.all(10),
                            // margin: EdgeInsets.symmetric(horizontal: 5),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    IconButton(onPressed: (){},
                                     icon: Icon(Icons.favorite_sharp),
                                     style: IconButton.styleFrom(
                                      backgroundColor: Colors.grey.shade300
                                     ),
                                     ),
                                     
                                     SizedBox(
                                      width: width*.45,
                                       child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                         children: [
                                           Text("Liked a post",style: TextStyle(
                                            fontWeight: FontWeight.bold,fontSize: 20),),
                                             SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                               child: Row(
                                                 children: [
                                                   Text("Minimalist work space setup 2026", style: TextStyle(
                                                    overflow: TextOverflow.fade
                                                   ),),
                                                   SizedBox(width: 5,)
                                                 ],
                                               ),
                                             )
                                         ],
                                       ),
                                     ),
                                     Container(
                                      height:50,
                                      width: 70,
                                      // color: Colors.black,
                                      child: Align(
                                        alignment: AlignmentGeometry.center,
                                        child: Text("2m ago")),
                                     )
                                     
                                  ],
                                ),
                                Divider(
                                  color: Colors.grey.shade300,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    IconButton(onPressed: (){},
                                     icon: Icon(Icons.chat_bubble),
                                     style: IconButton.styleFrom(
                                      backgroundColor: Colors.grey.shade300
                                     ),
                                     ),
                                     
                                     SizedBox(
                                      width: width*.45,
                                       child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                         children: [
                                           Text("Commented",style: TextStyle(
                                            fontWeight: FontWeight.bold,fontSize: 20),),
                                             SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                               child: Row(
                                                 children: [
                                                   Text("This looks absolutely stunning grow", style: TextStyle(
                                                    overflow: TextOverflow.fade
                                                   ),),
                                                   SizedBox(width: 5,)
                                                 ],
                                               ),
                                             )
                                         ],
                                       ),
                                     ),
                                     Container(
                                      height:50,
                                      width: 70,
                                      // color: Colors.black,
                                      child: Align(
                                        alignment: AlignmentGeometry.center,
                                        child: Text("2h ago")),
                                     )
                                     
                                  ],
                                ),
                                Divider(
                                  color: Colors.grey.shade300,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    IconButton(onPressed: (){},
                                     icon: Icon(Icons.person_add_alt_1),
                                     style: IconButton.styleFrom(
                                      backgroundColor: Colors.grey.shade300
                                     ),
                                     ),
                                     
                                     SizedBox(
                                      width: width*.45,
                                       child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                         children: [
                                           Text("New follower",style: TextStyle(
                                            fontWeight: FontWeight.bold,fontSize: 20),),
                                             SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                               child: Row(
                                                 children: [
                                                   Text("Sarah jenkins started following your", style: TextStyle(
                                                    overflow: TextOverflow.fade
                                                   ),),
                                                   SizedBox(width: 5,)
                                                 ],
                                               ),
                                             )
                                         ],
                                       ),
                                     ),
                                     Container(
                                      height:50,
                                      width: 70,
                                      // color: Colors.black,
                                      child: Align(
                                        alignment: AlignmentGeometry.center,
                                        child: Text("5h ago")),
                                     )
                                     
                                  ],
                                ),
                              ],
                            ),
                            
                          
                          ),
                        )
                    
                      ],
                    ),
                  ),
                ),
                bottomNavigationBar: SnakeNavigationBar.color(
                  
                  shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(30)),
                  padding: EdgeInsets.only(left: 15,right: 15,bottom: 15),
                  backgroundColor: Colors.black,
                  
                  items: [
                  BottomNavigationBarItem(icon: Icon(
                    Icons.home,color: Colors.white,), label: ""),
                  BottomNavigationBarItem(icon: Icon(
                    Icons.search,color: Colors.white),label: ""),
                  BottomNavigationBarItem(icon: Icon(
                    Icons.add_box_outlined,color: Colors.white),label: ""),
                  BottomNavigationBarItem(icon: Icon(
                    Icons.person_2_outlined,color: Colors.white),label: "")
                  ],
                ),
                );
  }
}