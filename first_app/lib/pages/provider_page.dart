import 'package:first_app/Model/counter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProviderPage extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    
    final counter = Provider.of<Counter>(context);
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Privider Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Butona her basıldığında sayı artacak:',
            style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              '${counter.count}',
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: counter.increment,
        child: Icon(Icons.add),
      ),
    );
  }
}