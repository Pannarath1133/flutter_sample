import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:const Text("Using Container"),
        backgroundColor: Colors.purple.shade400,
        centerTitle: true,
      ),
      body:  Center(
        child: Column(
          children: [
            container1(),
            container2()
        ],),
      ),
    );
  }//build

  Widget container1() => Container(
    color: Colors.purple.shade100,
        height: 250,
        width: 250,
        margin:const EdgeInsets.all(60),
        padding: const EdgeInsets.only(left: 50,top: 10),
        child: const Text("I'M R I C H",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold),
          ),
  );

  Widget container2() =>Container(
    height: 200,
    width: 150,
    margin: const EdgeInsets.all(50),
    padding: const EdgeInsets.only(left: 10,top:50),
    //color: Colors.blueGrey.shade300,
    decoration: BoxDecoration(
      color: Colors.black,
      border:  Border.all(
        color: Colors.yellow,
        style: BorderStyle.solid,
        width: 10,
      ),
      shape: BoxShape.rectangle,
      borderRadius: const BorderRadius.all(Radius.elliptical(50, 50)) // มุมโค้งมน

    ),
    child: const Text("L O V E",
    style:TextStyle(
      color: Colors.pink,
      fontSize: 35,
      fontWeight: FontWeight.bold,),),
  );

}