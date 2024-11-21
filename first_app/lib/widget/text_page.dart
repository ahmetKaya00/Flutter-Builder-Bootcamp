import 'package:flutter/material.dart';

class TextPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("text Widget"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Ahmet Kaya"),
            SizedBox(height: 10),
            Text(
              "Kalın, büyük ve renkli metin",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Ahmet kaya asdasdasdasdasdasdasdasd"
                  "asdasdasdasdasdasdasd",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[700],
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Bu bir metkez hizalı metin",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18,color: Colors.teal),
            ),
            SizedBox(height: 10),

            Text(
              "Altı çizgili ve italik metin",
              style: TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.underline,
                decorationColor: Colors.red,
                decorationStyle: TextDecorationStyle.dashed,
              ),
            )
          ],
        ),
      ),
    );

  }
}