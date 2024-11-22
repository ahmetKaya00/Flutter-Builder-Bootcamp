import 'package:flutter/material.dart';
import 'package:yolcu/pages/campaigns_page.dart';
import 'package:yolcu/pages/search_page.dart';

class HomeScreen extends StatefulWidget{
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{
  int _selectedIndex = 0;

  final List<Widget> _tabs =[
    SearchTab(),//Ara sekmesi
    CampaignTab(),
  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _tabs,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month_rounded),
              label: 'Ara'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_offer),
              label: 'Kampanyalar'
          )
        ],
      ),
    );
  }
}