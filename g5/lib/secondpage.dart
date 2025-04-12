import 'package:get/get.dart';

class secondpage extends GetxController{

  RxList<String> Fruite = ['Mango','Orange','Banana','Graps','Cherry'].obs;
  RxList favouritefruite = [].obs;

  addfavourite(String value){
    favouritefruite.add(value);
  }

  removefavourite(String value){

    favouritefruite.remove(value);

  }
}