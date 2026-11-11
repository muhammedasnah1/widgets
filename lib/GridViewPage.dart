import 'package:flutter/material.dart';
import 'package:my_second_flutter/fruit_details_screen.dart';
import 'package:my_second_flutter/modelClass/fruit_class.dart';

class Gridviewpage extends StatefulWidget {
  
  const Gridviewpage({super.key});

  @override
  State<Gridviewpage> createState() => _GridviewpageState();
}

class _GridviewpageState extends State<Gridviewpage> {
  List<String> name = ["Kiwi Fruit", "Apple", "Tomato", "Lemon"];
  List<Fruit> fruitList = [
    Fruit("Kiwi Fruit", "assets/kiwi.jpg", 160, 0),
    Fruit("Apple", "assets/apple1.jpg", 75, 2),
    Fruit("Tomato", "assets/tomato.jpg", 25, 1),
    Fruit("Lemon", "assets/lemon.jpg", 48, 0),
  ];
   
  bool onclicked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actionsPadding: EdgeInsets.symmetric(horizontal: 10),
        titleSpacing: 5,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        title: TextField(
          decoration: InputDecoration(
            fillColor: Colors.grey.shade200,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            hintText: ('Search Groceries or Products'),
            hintStyle: TextStyle(color: Colors.grey),
            suffixIcon: Icon(Icons.mic, color: Colors.grey),
            contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 1),
          ),
        ),
        actions: [Icon(Icons.shopping_bag, color: Colors.amber)],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Divider(
              indent: 20,
              endIndent: 20,
              thickness: 1.5,
              color: Colors.grey.shade300,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Fruits & Vegetables",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Spacer(),
                Icon(Icons.filter_list_sharp, color: Colors.grey),
                SizedBox(width: 25),
                Icon(Icons.grid_view_rounded, color: Colors.grey),
              ],
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: .64,
                ),
                itemCount: fruitList.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              FruitDetailsScreen(fruitData: fruitList[index]),
                        ),
                      );
                    },
                    child: Card(
                      color: Color.fromARGB(255, 252, 249, 249),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          children: [
                            Container(
                              color: Colors.white,
                              padding: EdgeInsets.all(5),
                              child: Column(
                                children: [
                                  Align(
                                    alignment: AlignmentGeometry.topLeft,
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          onclicked = !onclicked;
                                        });
                                      },
                                      child: Icon(
                                        Icons.favorite,
                                        color: onclicked
                                            ? Colors.red
                                            : Colors.grey.shade300,
                                      ),
                                    ),
                                  ),
                                  Image(
                                    image: AssetImage(fruitList[index].image),
                                    height: 130,
                                    width: 100,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 8,
                                right: 8,
                                top: 8,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    fruitList[index].name,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Text(
                                    "₹ ${fruitList[index].price}",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 15),
                            fruitList[index].count == 0
                                ? InkWell(
                                    onTap: () {
                                      setState(() {
                                        fruitList[index].count++;
                                      });
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: Colors.orange.shade500,
                                      ),
                                      padding: EdgeInsets.symmetric(
                                        vertical: 3,
                                        horizontal: 15,
                                      ),
                                      child: Text(
                                        "ADD",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            fruitList[index].count--;
                                          });
                                        },
                                        child: Container(
                                          // margin: EdgeInsets.all(20),
                                          width: 40,
                                          decoration: BoxDecoration(
                                            color: Colors.orange.shade100,
                                            borderRadius: BorderRadius.circular(
                                              20,
                                            ),
                                          ),
                                          child: Icon(
                                            Icons.remove,
                                            color: Colors.orange.shade600,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        fruitList[index].count.toString(),
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            fruitList[index].count++;
                                          });
                                        },
                                        child: Container(
                                          width: 40,
                                          decoration: BoxDecoration(
                                            color: Colors.amber.shade200,
                                            borderRadius: BorderRadius.circular(
                                              20,
                                            ),
                                          ),
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.orange,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
