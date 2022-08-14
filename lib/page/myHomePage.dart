import 'dart:convert';


import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hallo"),
      ),
      body: Center(child: FutureBuilder(builder: (context, snapshot) {
        var showData = json.decode(snapshot.data.toString());
        return ListView.builder(
          
          itemBuilder: (BuildContext, int index) {
            return ListTile(
              title: Text(showData[index]['nama']),
              trailing: Text(showData[index]['asma'], style: TextStyle(fontSize: 18),),
              subtitle: Text(showData[index]['arti']),
            );
          },
          itemCount: showData.length,
        );
      }, future: DefaultAssetBundle.of(context).loadString('assets/jsonData.json'),
      )
      ),
    );
  }
}
