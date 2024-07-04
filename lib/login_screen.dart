import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxtutorials/getx_controllers/loginController.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
 LoginController loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Center(child: Text('Login Screen',style: TextStyle(
          color: Colors.white
        ),)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Padding(padding: const EdgeInsets.all(12),
            child:TextFormField(
              controller: loginController.emailController.value,
              decoration: InputDecoration(
                hintText: 'abc@gmail.com',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
                )
              ),

            ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child:TextFormField(
                controller: loginController.passwordController.value,
                decoration: InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                    )
                ),

              ),
            ),
            Obx(() {
              return loginController.isLoading.value ? const Center(child: CircularProgressIndicator()) : InkWell(
                onTap: (){
                  loginController.loginApiController();
                },
                child: Padding(
                    padding: const EdgeInsets.all(12),
                    child:Container(
                      height: Get.height * 0.08,
                      width: Get.width * 0.8,
                      decoration: BoxDecoration(
                        color: Colors.green.shade500,
                        borderRadius: BorderRadius.circular(12),

                      ),
                      child: const Center(
                        child: Text('LogIn',style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500
                        ),),
                      ),
                    )
                ),
              );
            })



          ],
        ),
      ),
    );
  }
}
