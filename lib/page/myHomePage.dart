import 'dart:convert';
// import 'dart:html';

import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
    backgroundColor: Color.fromARGB(255, 70, 70, 70),
      
        title: const Text("Hallo"),
      ),
      body: Center(
      
          child: FutureBuilder(
        builder: (context, snapshot) {
          var showData = json.decode(snapshot.data.toString());
          return ListView.builder(
          
            itemBuilder: (BuildContext, int index) {
              return ListTile(
            
                title: Text(showData[index]['nama']),
                trailing: Text(
                  showData[index]['asma'],
                  style: TextStyle(fontSize: 18),
                ),
                subtitle: Text(showData[index]['asma']),
                // leading: Text(showData[index]['type']),
                onLongPress: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Container(
                      padding: EdgeInsets.all(20),
                      height: 600,
                      decoration: BoxDecoration(
                      color: Color.fromARGB(255, 30, 29, 30),
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                      child: Center(child: Column(
                        children: [
                          Text(showData[index]['nama'], style: TextStyle(fontSize: 20),),
                          SizedBox(height: 2,),
                          Text(showData[index]['keterangan'], style: TextStyle(fontSize: 17),),

                        ],
                      )),
                      
                      ),
                      behavior: SnackBarBehavior.floating,
                      backgroundColor: Color.fromARGB(0, 0, 0, 0),
                    ),
                  );
                },
              );
            },
            itemCount: showData.length,
          );
        },
        future:
            DefaultAssetBundle.of(context).loadString('assets/jsonData.json'),
      )),
    );
  }
}
