import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  final List<String> listItems = [
    'Наборы',
    'Для лица',
    'Для глаз',
    'Для тела',
    'Умывание'
  ];
  final List<String> imagesmazpast = [
    "images/maz_past.png",
    "images/maz2.png",
    "images/maz3.png",
    "images/maz4.png",
    "images/maz4.png",
  ];
  final List<String> imagesitems = [
  "images/maz1.png",
  "images/maz2.png",
  "images/maz3.png",
  "images/maz4.png",
  "images/maz4.png",
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          SizedBox(
              height: 400.0,
              width: double.infinity,
              child: AnotherCarousel(
                dotSize: 3,
                dotPosition: DotPosition.topLeft,
                indicatorBgPadding: 5,
                images: [
                  AssetImage("images/maz.png"),
                  AssetImage("images/maz1.png"),
                ],
              )),
          SizedBox(height: 20),
          SizedBox(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: listItems.length,
              itemBuilder: (context, index) {
                return horizontalListItem(listItems[index],imagesitems[index]);
              },
            ),
          ),
          SizedBox(height: 20),
          Text("Новинки"),
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: listItems.length,
              itemBuilder: (context, index) {
                return horizontalListItem2(listItems[index],imagesmazpast[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
  Widget horizontalListItem(String text,String imagess) {
    return Container(
      width: 120,
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Column(
          children: [
            Image(
                height: 120,
                width: 80,
                image:AssetImage("$imagess"),
            ),
            Text(
              text,
              style: TextStyle(fontSize: 16.0, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
  Widget horizontalListItem2(String text,String imagess) {
    return Container(
      width: 150,
      height: 600,
      // margin: EdgeInsets.symmetric(horizontal: 5.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Column(
          children: [
            Image(
              height: 100,
              width: 100,
              image:AssetImage("$imagess"),
            ),
            Text(
              text,
              style: TextStyle(fontSize: 10.0, color: Colors.black),
            ),
            Text(
              text,
              style: TextStyle(fontSize: 10.0, color: Colors.black,fontWeight: FontWeight.bold),
            ),
            Text(
              text,
              style: TextStyle(fontSize: 10.0, color: Colors.black,fontWeight: FontWeight.bold),
            ),
            Text(
              text,
              style: TextStyle(fontSize: 10.0, color: Colors.black,fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
