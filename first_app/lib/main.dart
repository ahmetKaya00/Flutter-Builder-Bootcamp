import 'package:first_app/widget/column_page.dart';
import 'package:first_app/widget/container_page.dart';
import 'package:first_app/widget/elevated_button_page.dart';
import 'package:first_app/widget/gridview_page.dart';
import 'package:first_app/widget/listview_page.dart';
import 'package:first_app/widget/row_page.dart';
import 'package:first_app/widget/stack_page.dart';
import 'package:first_app/widget/text_page.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:" Flutter Widget",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget Explorer'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Row Widget'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => RowPage()),
              );
            },
          ),
          ListTile(
            title: Text('Column Widget'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ColumnPage()),
              );
            },
          ),
          ListTile(
            title: Text('Container Widget'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ContainerPage()),
              );
            },
          ),
          ListTile(
            title: Text('Text Widget'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> TextPage()),
              );
            },
          ),
          ListTile(
            title: Text('ListView Widget'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ListViewPage()),
              );
            },
          ),
          ListTile(
            title: Text('Elevated Widget'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ElevatedButtonPage()),
              );
            },
          ),
          ListTile(
            title: Text('Stack Widget'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> StackPage()),
              );
            },
          ),
          ListTile(
            title: Text('GridView Widget'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> GridViewPage()),
              );
            },
          )
        ],
      ),
    );

  }
}