import 'package:flutter/material.dart';
import 'package:get/get.dart';

class screenthree extends StatefulWidget {
  const screenthree({super.key});

  @override
  State<screenthree> createState() => _screenthreeState();
}

class _screenthreeState extends State<screenthree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Column(
        children: [
          TextButton(onPressed: (){
            Get.back();
          }, child:Text('GO BACK'))
        ],
      ),
    );
  }
}
