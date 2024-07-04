import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxtutorials/models/promomodel.dart';
import 'package:http/http.dart' as http;

class LoginController extends GetxController{

   final emailController = TextEditingController().obs;
   final passwordController = TextEditingController().obs;
   RxBool isLoading = false.obs;
   Promomodel? promomodel;

    Future<void> loginApiController() async{
      isLoading.value = true;
      try {
      final response = await http.post(Uri.parse('https://reqres.in/api/login'),
          body: {
            'email': emailController.value.text,
            'password': passwordController.value.text,
          }
      );
      var data = jsonDecode(response.body.toString());
      if (kDebugMode) {
        print(data.toString());
        print(response.statusCode);
      }


      if(response.statusCode == 200){
        isLoading.value = false;
        Get.snackbar('Login Successfully', 'Login Done',
          colorText: Colors.white,
          backgroundColor: Colors.black54,);
      }
      else{
        isLoading.value = false;
        Get.snackbar('Login Failed', data['error'],
          colorText: Colors.white,
          backgroundColor: Colors.black54,);
      }

    }
    catch(e){
      isLoading.value = false;
      Get.snackbar('Login Failed', e.toString(),
        colorText: Colors.white,
        backgroundColor: Colors.black54,);
    }
    }

    Future<Promomodel?> getData() async{
      isLoading.value = true;
    try{
      var url = 'http://sc9.indus-erp.com:1251/ords/fortline/reg/PromoAPI';
      final responce = await http.get(Uri.parse(url));

      if(responce.statusCode == 200){
        isLoading.value = false;
        var body = jsonDecode(responce.body.toString());
        if(kDebugMode){
          print(body.toString());
        }
        promomodel = Promomodel.fromJson(body);
        return promomodel;
      }
      else{
        isLoading.value = false;
        Get.snackbar('Error', 'Do not load data');
      }
    }
    catch(e){
      isLoading.value = false;
      print(e.toString());
      Get.snackbar('Error', e.toString());

    }
     return null;
    }
}