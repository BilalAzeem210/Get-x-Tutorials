import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'getx_controllers/counter_controller.dart';


class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  final CounterController counterController = Get.put(CounterController());
  bool notification = false;

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print('Build');
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Center(child: Text('Notification Example',style: TextStyle(
          color: Colors.white,
        ),),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Notification'),
            Obx((){
              return Switch(
                  value: counterController.notificationvalue.value, onChanged: (value){
                counterController.getNotificaion(value);
              });
            })
          ],
        ),
      ),
    );
  }
}
