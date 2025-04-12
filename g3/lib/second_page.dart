
import 'package:get/get.dart';

class secondpage extends GetxController{

  // Rx Is getX data type
  RxInt counter = 1.obs; // obs is observable it change its value


  incrementvalue(){

    counter.value ++;
    print(counter.value);

  }

}
