import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenOne extends StatefulWidget {
  var name;
   ScreenOne({Key? key,this.name  }) : super(key: key);


  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.blue,
        title: Center(child: Text('Screen One: ${Get.arguments[0]}',style: const TextStyle(
          color: Colors.white
        ),),),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            height: Get.height * .3,
            width: Get.width * 1,
            color: Colors.cyanAccent,
              child: const Center(child: Text('Container One',style: TextStyle(
                color: Colors.white
              ),),),
          ),
          Container(
            alignment: Alignment.topLeft,
            height: Get.height * .2,
            width: Get.width * .9,
            color: Colors.red,
            child: const Center(child: Text('Container Two',style: TextStyle(
              color: Colors.white
            ),),),
          ),
          Center(
            child: TextButton(
              onPressed: (){
                Get.toNamed('screenTwo',arguments: [
                  'azeem'
                ]);
              },
              child: const Text('Goto The Screen Two'),),
          ),
        ],
      ),
    );
  }
}
