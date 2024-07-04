

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class CounterController extends GetxController{

  RxInt counter = 1.obs;
  RxBool notificationvalue = false.obs;
  getCounter(){
    counter.value ++;
    if (kDebugMode) {
      print(counter.value);
    }
  }

  getNotificaion(bool value){
    notificationvalue.value = value;
    if (kDebugMode) {
      print(notificationvalue.value);
    }

  }
}