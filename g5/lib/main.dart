import 'package:flutter/material.dart';
import 'package:g5/secondpage.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
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
      body: ListView.builder(
          itemCount: secondpagecontroller.Fruite.length,
          itemBuilder: (context,index){

        return ListTile(
          onTap: (){

            if(secondpagecontroller.favouritefruite.contains(secondpagecontroller.Fruite[index].toString())){

              secondpagecontroller.removefavourite(secondpagecontroller.Fruite[index].toString());
            }

            else{

              secondpagecontroller.addfavourite(secondpagecontroller.Fruite[index].toString());
            }

          },
          title: Text(secondpagecontroller.Fruite[index].toString()),
         trailing: Obx (() => Icon(Icons.favorite,color: secondpagecontroller.favouritefruite.contains(secondpagecontroller.Fruite[index] ) ? Colors.red : Colors.white),),

        );
      })// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
