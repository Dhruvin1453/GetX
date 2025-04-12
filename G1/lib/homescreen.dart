import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:g1/screentwo.dart';
import 'package:get/get.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar:AppBar(

        title: Text("MY APP"),
      ),
      body: Column(
        children: [

          Card(
            child: ListTile(
              title: Text("Dialog"),
              subtitle: Text("This IS GetX Dialog"),

              onTap: (){

                Get.defaultDialog(
                    title: "Alert",
                    middleText: "Are You Sure You Want To Delete This Item",

                  confirm: TextButton(onPressed: (){
                  //  Navigator.pop(context);
                    Get.back();
                  }, child: Text("OK")),

                  cancel: TextButton(onPressed: (){
                  //  Navigator.pop(context);
                    Get.back();
                  }, child: Text("Cancle"))
                );

              },
            ),
          ),

          Card(child: ListTile(

            title: Text("GET BOTTUM SHEET IN GETX"),
            subtitle: Text("IN GETX GET BOTTUM SHEET"),

            onTap: (){

              Get.bottomSheet(
                Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.light_mode),
                      title: Text("Light Mode"),
                      onTap: (){
                        Get.changeTheme(ThemeData.light());
                      }
                    ),

                    ListTile(
                      leading: Icon(Icons.dark_mode),
                      title: Text("Dark Mode"),
                      onTap: (){
                        Get.changeTheme(ThemeData.dark());
                      },
                    )
                  ],
                )
              );


            },
          )),

          ElevatedButton(onPressed: (){
            //Navigator.push(context,MaterialPageRoute(builder: (context) => screentwo()));
           // Get.to(screentwo());
            Get.toNamed('/screentwo',arguments: ["Dhruvin"]);
          }, child:Text("NEXT PAGE"))



        ],

    ),

      floatingActionButton: FloatingActionButton(onPressed: (){
        Get.snackbar("ALERT","THIS IS SNACKBAR",

          icon: Icon(Icons.add_alert),
          backgroundColor: Colors.blueAccent,
          onTap: (snap){

          //
          }
        );

      },),
    );
  }
}
