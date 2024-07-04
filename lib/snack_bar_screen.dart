import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SnackBarScreen extends StatefulWidget {
  const SnackBarScreen({Key? key}) : super(key: key);

  @override
  State<SnackBarScreen> createState() => _SnackBarScreenState();
}

class _SnackBarScreenState extends State<SnackBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Center(child: Text('SnackBarExample',style: TextStyle(
          color: Colors.white
        ),),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Example creating dialog alert using getx
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Card(
                child: ListTile(
                  title: const Text('Getx Dialog Alert'),
                  subtitle:const  Text('Press to use Dialog Alert'),
                  onTap: (){
                    Get.defaultDialog(
                      title: 'Delete Chat',
                      middleText: 'Are You Sure You Want To Delete This Chat',
                      confirm: TextButton(onPressed: (){
                        Get.back();
                      }, child: const Text('Ok')),
                      cancel: TextButton(onPressed: (){
                        Get.back(); // To use Getx you don't need to use Navigator.pop use Get.back()
                      }, child: const Text('Cancel')),
                      contentPadding: const EdgeInsets.all(20),
                      titlePadding: const EdgeInsets.only(top: 20)

                    );
                  },
                ),
              ),
            ),
            //Example creating BottomSheet using getx
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Card(
                child: ListTile(
                  title: const Text('Getx Bottom Sheet'),
                  subtitle:const  Text('Press to use Bottom Sheet'),
                  onTap: (){
                    Get.bottomSheet(
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(topRight: Radius.circular(30),
                              topLeft: Radius.circular(30) ),
                        ),
                        child: Column(
                          children: [
                            ListTile(
                              leading: const Icon(Icons.light_mode),
                              title: const  Text('Light Mode'),
                              onTap: (){
                                Get.changeTheme(ThemeData.light());
                                Get.back();
                              },
                            ),
                            ListTile(
                              leading: const Icon(Icons.dark_mode),
                              title: const  Text('Dark Mode'),
                              onTap: (){
                                Get.changeTheme(ThemeData.dark());
                                Get.back();
                              },
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            //Example creating Routes using getx
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Card(
                child: ListTile(
                  title: const Text('Getx Routes'),
                  subtitle:const  Text('Goto Screen One'),
                  onTap: (){
                    Get.toNamed('screenOne',arguments: [
                      'Bilal',
                    ]);
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Card(
                child: ListTile(
                  title: const Text('Getx Counter'),
                  subtitle:const  Text('Counter Example using Getx'),
                  onTap: (){
                   Get.toNamed('/counterScreen');
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Card(
                child: ListTile(
                  title: const Text('Getx Notification Button'),
                  subtitle:const  Text('notification Button Example using Getx'),
                  onTap: (){
                    Get.toNamed('/notificationScreen');
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Card(
                child: ListTile(
                  title: const Text('Getx Favorite'),
                  subtitle:const  Text('Favorite Example using Getx'),
                  onTap: (){
                    Get.toNamed('/favoriteScreen');
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Card(
                child: ListTile(
                  title: const Text('Getx Login Screen'),
                  subtitle:const  Text('Login Example using Getx'),
                  onTap: (){
                    Get.toNamed('/loginScreen');
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue.shade700,
        onPressed: (){
          //Example creating SnackBar using getx
        Get.snackbar('SnackBar', 'This is a Snack Bar',
            icon: const Icon(Icons.add,color: Colors.white,),
            colorText: Colors.white,
            backgroundColor: Colors.black54,
            snackPosition: SnackPosition.TOP);
        
      },
      child: const Icon(Icons.add,color: Colors.white,),),
    );
  }
}
