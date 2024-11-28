import 'package:flutter/material.dart';

class RepaintBoundaryPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('RepaintBoundary Demo')),

      body: Column(
        children: [
          Text('Bu metin hiç yeniden çizilmez'),

          RepaintBoundary(
            child: Container(
              color: Colors.blue,
              height: 100,
              width: 100,

              child: Center(
                child: Text('Yeniden çizilen alan'),
              ),
            ),
          ),
          ElevatedButton(onPressed: (){

          },
              child: Text('Performansı Test Et'),
          ),
        ],
      ),
    );
  }
}