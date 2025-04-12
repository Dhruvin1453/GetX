import 'package:flutter/material.dart';
import 'package:g4/secondpage.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  secondpage secondpagecontroller = Get.put(secondpage());

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body:Column(
        children: [
          Obx(()=> Container(height: 200,
          width: 200,
          color: Colors.red.withOpacity(secondpagecontroller.opacity.value),)
          ),

          Obx(() =>Slider(value: secondpagecontroller.opacity.value, onChanged:(value){

             secondpagecontroller.setopacity(value);
            }),
          ),
        ],
      )  // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
