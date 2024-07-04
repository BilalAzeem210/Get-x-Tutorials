import 'package:flutter/material.dart';

class TwoListView extends StatefulWidget{

  @override
  State<TwoListView> createState() => _TwoListViewState();

}

class _TwoListViewState extends State<TwoListView>{

  @override
  Widget build(BuildContext context) {
    List<String> mylist = ['Bilal','Azeem','Osama','Hamza','Umaiz','Moeed'];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Center(child: Text('Two List Example')),
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                itemCount: mylist.length,
                itemBuilder: (context,index) {
                  return ListTile(
                    title: Text(mylist[index].toString())
                  );
                },

              ),),
          SizedBox(height: 10,),
          Expanded(
            child: ListView.builder(
              itemCount: mylist.length,
              itemBuilder: (context, index) {
                return ListTile(
                    title: Text(mylist[index].toString())
                );
              },

            ),),
        ],
      ),
    );
  }

}