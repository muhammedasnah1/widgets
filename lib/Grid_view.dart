import 'package:flutter/material.dart';

class GridView_Exp extends StatefulWidget {
  const GridView_Exp({super.key});

  @override
  State<GridView_Exp> createState() => _GridView_ExpState();
}

class Fruit{
  String name;
  String color;
  Fruit(this.name, this.color);
}

class _GridView_ExpState extends State<GridView_Exp> {

List<String> names = ["Apple","orange","Banana","grapes","guava","pineapple","watermelon","lemon"];

List<Fruit> fruitList = [
  Fruit("Apple","red"),
  Fruit("orange","orange"),
  Fruit("Banana","yellow"),
  Fruit("grapes","purple"),
  Fruit("guava","green"),
  Fruit("pineapple","yellow"),
  Fruit("watermelon","red"),
  Fruit("lemon","yellow"),
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 2
          ),
          itemCount: fruitList.length, 
        itemBuilder: (context, index){
          return Container(
            color: index%2==0?Colors.green:Colors.red,
            alignment: Alignment.center,
            child: Column(
              children: [
                Text(fruitList[index].name, style: TextStyle(fontSize: 25),),
                Text("#${fruitList[index].color}", style: TextStyle(fontSize: 25),),
              ],
            ),
          );
        }),
    );
  }
}