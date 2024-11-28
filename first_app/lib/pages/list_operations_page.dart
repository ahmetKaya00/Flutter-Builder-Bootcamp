import 'package:flutter/material.dart';

class ListOperationsPage extends StatefulWidget{

  @override
  _ListOperationPageState createState() => _ListOperationPageState();
}

class _ListOperationPageState extends State<ListOperationsPage>{
  final List<String> items = [];

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Liste İşlemleri')),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(hintText: 'Yeni öğe ekle'),
                  ),
                ),
                ElevatedButton(
                    onPressed: (){
                      if(_controller.text.isNotEmpty){
                        setState(() {
                          items.add(_controller.text);
                        });
                        _controller.clear();
                      }
                    },
                    child: Text('Ekle'),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index){
                return ListTile(
                  title: Text(items[index]),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: (){
                      setState(() {
                        items.removeAt(index);
                      });
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}