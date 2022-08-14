import 'dart:convert';


import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hallo"),
      ),
      body: Center(child: FutureBuilder(builder: (context, snapshots) {
        var showData = json.decode(snapshots.data.toString());
        return ListView.builder(
          itemCount: showData.length,
          itemBuilder: (BuildContext, int index) {
            return ListTile(
              title: Text(showData[index]['nama']),
              subtitle: Text(showData[index]['type']),
            );
          },
        );
      }, future: DefaultAssetBundle.of(context).loadString('assets/jsonData.json'),
      )
      ),
    );
  }
}
