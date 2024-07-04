import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxtutorials/getx_controllers/favorite_controller.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {

  final FavoriteController favoriteController = Get.put(FavoriteController());

  @override
  Widget build(BuildContext context) {
    print('Build');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Center(child: Text('Favorite Screen',style: TextStyle(color: Colors.white),),),
      ),
      body: ListView.builder(
          itemCount: favoriteController.fruitList.length,
          itemBuilder: (context,index){

              return Padding(
                padding: const EdgeInsets.all(4.0),
                child: Card(
                  child: ListTile(
                    onTap: (){
                      if(favoriteController.tempFruitList.contains(favoriteController.fruitList[index].toString()))
                      {
                        favoriteController.removeToFavorite(favoriteController.fruitList[index].toString());
                      }
                      else {
                        favoriteController.addToFavorite(favoriteController.fruitList[index].toString());


                      }
                    },
                    title: Text(favoriteController.fruitList[index].toString()),
                    trailing: Obx((){
                      return Icon(favoriteController.tempFruitList.contains(favoriteController.fruitList[index].toString()) ? Icons.favorite : Icons.favorite_border,
                          color:  Colors.black);
                    }),
                  ),
                ),
              );

          }),
    );
  }
}
