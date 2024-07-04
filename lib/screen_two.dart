import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenTwo extends StatefulWidget {
  var name;
  ScreenTwo({Key? key,this.name}) : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.blue,
        title: Center(child: Text('Screen Two: ${Get.arguments[0]}',style: const TextStyle(
           color: Colors.white
        ),),),
      ),
      body: Center(
        child: TextButton(
          onPressed: (){
            Get.back();
            Get.back();
          },
          child: const Text('Go Back'),
        ),
      ),
    );
  }
}
