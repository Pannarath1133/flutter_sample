import 'dart:math';

import 'package:flutter/material.dart';

class MyGirdPage extends StatelessWidget {
  const MyGirdPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: const Color.fromARGB(255, 249, 255, 200),
    appBar: AppBar(
      title: const Text("GirdView.build"),
      centerTitle: true,),
    body: GridView.builder(
      itemCount: 7,
      padding: const EdgeInsets.all(10),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200, //กำหนดความกว้างหรือความสูงสูงสุดของแต่ละ widget
        childAspectRatio: 3/4,  //กำหนดอัตราส่วนระหว่าง ความกว้างและความสูงของแต่ละ widget
        crossAxisSpacing: 5,  //กำหนดระยะห่างระหว่าง widget ในแกนขวาง ของ GridView
        mainAxisSpacing: 5),   //กำหนด ความสูงคงที่ ของแต่ละ tile ใน GridView
      itemBuilder: (context,index)=>ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child:buildGriddTile(context, index)
      )));

      Widget buildGriddTile(BuildContext ctx,int index){
        var rnd = Random();

        return GridTile(
          footer: GridTileBar(
            backgroundColor: Colors.black54,
            title: Text("สินค้า $index"),
            subtitle: Text("\$${50+rnd.nextInt(200)}"),
            trailing: InkWell(
              child:const  Icon(Icons.zoom_in,size: 32,color: Color.fromARGB(255, 180, 88, 196),),
              onTap: () => myAlert(ctx,'คุณได้เปิดดูสินค้า ลำดับที่-> $index ') ,
            ),
          ) ,

          child:Image.network('https://picsum.photos/250?random=$index',fit: BoxFit.cover,) ,
        );
      }

      void myAlert(BuildContext ctx, String txt){
        showDialog(
          context: ctx, 
          builder: (ctx)=> AlertDialog(
            content: Text(txt),
            actions: [
              TextButton(
                onPressed:()=>Navigator.of(ctx).pop(), 
                child: const Text("ตกลง"))
            ],
          ));
      }

}