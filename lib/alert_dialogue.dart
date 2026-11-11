
              ElevatedButton(onPressed: (){
              showDialog(context: context,
               builder: (context) => AlertDialog(
                title: Text("Alert Dialog Box"),
                content: Text('You have raised an Alert Dialog Box'),
                actions: [
                  TextButton(onPressed: (){
                    Navigator.of(context).pop();
                  }, child: Text("Cancel")),
                  TextButton(onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => Whatsappchat()), );
                  }, child: Text("Ok"))
                ],
               ), );
              }, child: Icon(Icons.chat))