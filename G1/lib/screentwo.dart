import 'package:flutter/material.dart';
import 'package:g1/screenthree.dart';
import 'package:get/get.dart';

class screentwo extends StatefulWidget {
  const screentwo({super.key});

  @override
  State<screentwo> createState() => _screentwoState();
}

class _screentwoState extends State<screentwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("THIS IS SECOND PAGE"+Get.arguments[0]),
      ),

      body: Column(
        children: [
          ElevatedButton(onPressed: (){

            Get.to(screenthree());
          }, child:Text("NEXT")),
          ElevatedButton(onPressed: (){

           // Navigator.pop(context);
            Get.back();
          }, child:Text("GO BACK"))
        ],
      ),
    );
  }
}

