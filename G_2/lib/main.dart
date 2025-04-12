import 'package:flutter/material.dart';
import 'package:g_2/Langauges.dart';
import 'package:get/get.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      locale: Locale('en','US'),
      fallbackLocale: Locale('en','US'),
      translations: Langauges(),


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


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [

          ListTile(
            title:Text('message'.tr),
            subtitle: Text('name'.tr),
          ),
          
          SizedBox(
            height: 50,
          ),
          
          Row(
            children: [
              OutlinedButton(onPressed: (){
                Get.updateLocale(Locale('en','US'));
              }, child:Text('English')),
              OutlinedButton(onPressed: (){
                Get.updateLocale(Locale('gu','IN'));
              }, child:Text('Gujrati'))
            ],
          )
        ],
      )
    );
  }
}
