import 'package:flutter/material.dart';

class MyContainer2 extends StatelessWidget {
  const MyContainer2({super.key});

  @override
 Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:const Text("Container"),
        backgroundColor:Colors.green,
      ),
      body: Center(
        child: Column(
          children: [
            mycon1(),
            mycon2(),
            mycon3()
        ],),
      ),
    );
  }//build


  Widget mycon1() => Container(
     color: Colors.purple.shade100,
        height: 100,
        width: 250,
        margin:const EdgeInsets.all(20),
        alignment: Alignment.center,
        child: const Text("No Decoration",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.normal),
          ),
  );


  Widget mycon2() => Container(
    height: 80,
    width: 250,
    margin: const EdgeInsets.all(20),
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: Colors.pink.shade100,
      borderRadius: BorderRadius.circular(30), // มุมโค้ง
  ),
    child: const Text("Circular(30)",
    style: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.normal),
      ),
  );


  Widget mycon3() => Container(
    height: 120,
    width: 120,
    margin: const EdgeInsets.all(20),
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color:  Colors.blue.shade100,
      shape: BoxShape.circle,
    ),
    child: const Text("Circle",
    style: TextStyle(
      fontSize: 20,
    ),),

  
  );
}