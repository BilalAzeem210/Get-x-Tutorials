import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxtutorials/counter_screen.dart';
import 'package:getxtutorials/favorite_screen.dart';
import 'package:getxtutorials/get_data_screen.dart';
import 'package:getxtutorials/login_screen.dart';
import 'package:getxtutorials/notification_screen.dart';
import 'package:getxtutorials/screen_one.dart';
import 'package:getxtutorials/screen_two.dart';
import 'package:getxtutorials/snack_bar_screen.dart';
import 'package:getxtutorials/two_listview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const GetDataScreen(),
      getPages: [
        GetPage(name: '/', page: () => const SnackBarScreen()),
        GetPage(name: '/screenOne', page: () =>  ScreenOne() ),
        GetPage(name: '/screenTwo', page: () =>  ScreenTwo()),
        GetPage(name: '/counterScreen', page: () => const CounterScreen()),
        GetPage(name: '/notificationScreen', page: () => const NotificationScreen()),
        GetPage(name: '/favoriteScreen', page: () => const FavoriteScreen()),
        GetPage(name: '/loginScreen',page: () => const LoginScreen())
      ],
    );
  }
}

