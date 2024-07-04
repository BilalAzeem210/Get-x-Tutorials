import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxtutorials/getx_controllers/counter_controller.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  final CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print('build');
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Center(child: Text('Counter Screen',style: TextStyle(
          color: Colors.white,
        ),),),
      ),
      body:  Center(
        child: Obx((){
          return  Text(counterController.counter.toString(),style: const TextStyle(
              fontSize: 22
          ),);
        }),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: (){
                counterController.getCounter();
        },
        child: const Icon(Icons.add,color: Colors.white,),
      ),
    );
  }
}
