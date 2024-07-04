import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxtutorials/getx_controllers/loginController.dart';
import 'package:getxtutorials/models/promomodel.dart';

class GetDataScreen extends StatefulWidget {
  const GetDataScreen({Key? key}) : super(key: key);

  @override
  State<GetDataScreen> createState() => _GetDataScreenState();
}

class _GetDataScreenState extends State<GetDataScreen> {
  LoginController loginController = Get.put(LoginController());
  @override
  void initState() {
    super.initState();
    loginController.getData();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Center(child: Text('GetData',style: TextStyle(color: Colors.white54),)),
      ),
      body: Obx(
          () {
            if(loginController.isLoading.value){
              return const Center(child: CircularProgressIndicator());
            }
            else if (loginController.promomodel == null || loginController.promomodel!.items == null){
                return const Center(child: Text('No data available'));
            }
            else{
              return  ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: loginController.promomodel!.items!.length,
                itemBuilder: (ctx,index){
                  return Card(
                    color: Colors.red.shade700,
                    child: ListTile(
                      title: Text(loginController.promomodel!.items![index].notification.toString(),style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontSize: 15,
                      ),),
                      leading: Text(loginController.promomodel!.items![index].price.toString(),style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontSize: 15,
                      ),),
                      subtitle: Text(loginController.promomodel!.items![index].enddate.toString(),style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 18
                      ),),
                    
                    ),
                  );
                },
              );
            }
          }
      ),

    );
  }
}
