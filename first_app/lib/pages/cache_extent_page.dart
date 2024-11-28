import 'package:flutter/material.dart';

class CacheExtentPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CacheExtent Kullanımı')),

      body: ListView.builder(
        itemCount: 100,
        cacheExtent: 200,
        itemBuilder: (context, index){
          return ListTile(
            title: Text('Item $index'),
          );
        },
      )
    );
  }
}