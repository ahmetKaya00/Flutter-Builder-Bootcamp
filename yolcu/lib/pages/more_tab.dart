import 'package:flutter/material.dart';

class MoreTab extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Diğer'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: Icon(Icons.info),
                title: Text('Hakkımızda'),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(Icons.email),
                title: Text('İletişim'),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(Icons.article),
                title: Text('Kullanım Koşulları'),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(Icons.description),
                title: Text('Blog'),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(Icons.info_outline),
                title: Text('Uygulama Bilgileri'),
                onTap: (){},
              ),
              Divider(),
              Padding(
                  padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Sosyal Medya Hesaplarımız',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.facebook, size: 20, color: Colors.blue),
                  Icon(Icons.chat, size: 20, color: Colors.purple),
                  Icon(Icons.camera_alt, size: 20, color: Colors.lightBlue)
                ],
              ),
            ],
          ),
       ),
    );
  }
}