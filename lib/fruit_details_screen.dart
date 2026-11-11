import 'package:flutter/material.dart';
import 'package:my_second_flutter/modelClass/fruit_class.dart';

class FruitDetailsScreen extends StatefulWidget {
  final Fruit fruitData;
  const FruitDetailsScreen({super.key, required this.fruitData});

  @override
  State<FruitDetailsScreen> createState() => _FruitDetailsScreenState();
}

class _FruitDetailsScreenState extends State<FruitDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actionsPadding: EdgeInsets.only(right: 15),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back),
        ),
        title: Text("Fruit & Vegetables"),
        actions: [Icon(Icons.shopping_bag_outlined, color: Colors.amber)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Card(
              elevation: 2,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),

                // margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(5),
                child: Column(
                  children: [
                    Align(
                      alignment: AlignmentGeometry.topLeft,
                      child: Icon(
                        Icons.favorite_border_outlined,
                        color: Colors.grey,
                      ),
                    ),
                    Image(
                      image: AssetImage(widget.fruitData.image),
                      height: 250,
                      width: 200,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "₹ ${widget.fruitData.name}",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  Text(
                    "₹ ${widget.fruitData.price.toString()}/kg",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Card(
              elevation: 2,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade100,
                ),
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                child: SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            widget.fruitData.count--;
                          });
                        },
                        child: Container(
                          // margin: EdgeInsets.all(20),
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.orange.shade100,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Icon(
                            Icons.remove,
                            color: Colors.orange.shade600,
                          ),
                        ),
                      ),
                      Text(
                        widget.fruitData.count.toString(),
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            widget.fruitData.count++;
                          });
                        },
                        child: Container(
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.amber.shade200,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Icon(Icons.add, color: Colors.orange),
                        ),
                      ),
                      SizedBox(width: 100),
                      InkWell(
                        onTap: () {},
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
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Align(
              alignment: AlignmentGeometry.bottomStart,
              child: Text(
                "Details",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Text(
              "Bring home the Fresh Tomato. Tomatoes contain ",
              style: TextStyle(fontSize: 14),
            ),
            Row(
              children: [
                Text(
                  "Vitamin C and A in abudant quality whi...",
                  style: TextStyle(fontSize: 14),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      Text("jhgkfgugiuhil");
                    });
                  },
                  child: Container(
                    child: Row(
                      children: [
                        Text(
                          "MORE",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurpleAccent,
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.deepPurpleAccent,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
