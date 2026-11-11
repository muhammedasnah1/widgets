import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
bool hidePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            padding: EdgeInsets.only(left: 5),
            margin: EdgeInsets.only(right: 30),
            decoration: BoxDecoration(border: Border.all(color: Colors.grey.shade400),
            borderRadius: BorderRadius.circular(5)
            ),
            height: 25,
            
            child: Row(
              children: [
                Text("English",style: TextStyle(fontWeight: FontWeight.bold),),
                Icon(Icons.keyboard_arrow_down)
              ],
            ),
          ),
        ],
      ),
       body:Padding(
         padding: const EdgeInsets.symmetric(horizontal: 25.0),
         child: SingleChildScrollView(
           child: Column(
            children: [
              SizedBox(height: 70,),
              
              // Align(alignment: AlignmentGeometry.center),
              Align(alignment: AlignmentGeometry.center,
                child: Text("Login",style: TextStyle(
                  fontSize: 30,fontWeight: FontWeight.bold))),
              Text("You must login into your"),
              Text("account to continue", style: TextStyle(height: 0.7),),
              SizedBox(height: 70,),
              Align(
                alignment: AlignmentGeometry.centerLeft,
                child: Text("E-Mail")),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    hint: Text("Enter your e-mail",style: TextStyle(
                      color: Colors.grey.shade500),),
                    
                    ),
                  
                ),
                SizedBox(height: 3,),
                Align(alignment: AlignmentGeometry.centerLeft,
                child: Text("Password")),
           TextField(
            obscureText: hidePassword,
                  decoration: InputDecoration(
                    
                    suffixIcon: IconButton( 
                      icon: Icon( hidePassword ? Icons.visibility_off : Icons.visibility,),
                    onPressed: () {
                      setState(() {
                        hidePassword = !hidePassword;
                      });
                    },),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    hint: Text("Enter your password",style: TextStyle(color: Colors.grey.shade500),)
                    ),
                  
                ),
                SizedBox(height: 30,),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    side: BorderSide.none,
                    minimumSize: const Size(350,50,),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(13))
                    ),
                  onPressed: (){}, child: Text("Login")
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Icon(Icons.check_box_outline_blank,color: Colors.grey.shade400),
                      Text("Remember me"),
                      Spacer(),
                      Text("Forgot password?",style: TextStyle(fontWeight: FontWeight.bold),)
                    ],
                  ),
                  SizedBox(
                    height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 1,
                          width: 140,
                          color: Colors.grey.shade400,
                          ),
                          
                          Text("or"),
                          
                           Container(
                          height: 1,
                          width: 140,
                          color: Colors.grey.shade400,
                          ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10)),
                          height: 50,
                          width: 150,
                          child: Icon(Icons.g_mobiledata,fontWeight: FontWeight.bold,),
                          
                        ),
                        Spacer(),
                        
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10)),
                          height: 50,
                          width: 150,
                          child: Icon(Icons.apple,fontWeight: FontWeight.bold,),
                          
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // SizedBox(
                        //   width: 80,
                        // ),
                        Text("Not Registered?",),
                        Text(" Register",style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    )
            ],
           ),
         ),
       ),
    );
  }
}