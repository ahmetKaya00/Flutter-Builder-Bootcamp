import 'package:flutter/material.dart';

class ConstUsagePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Const Kullanımı')),
      body: Column(
        children: [
          const Text('Bu metin her zaman sabittir'),
          const SizedBox(height: 20),
          const Icon(Icons.star, size: 50, color: Colors.yellow),
        ],
      ),
    );
  }
}