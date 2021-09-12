import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  HomePage({
    Key? key,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;
  List<BottomNavigationBarItem> btmNavItems = [
    BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ""),
    BottomNavigationBarItem(icon: Icon(Icons.search_outlined), label: ""),
    BottomNavigationBarItem(icon: Icon(Icons.add_a_photo_outlined), label: ""),
    BottomNavigationBarItem(icon: Icon(Icons.healing_outlined), label: ""),
    BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined), label: ""),
  ];
  static List<Widget> _screens = [
    Container(color: Colors.orangeAccent,),
    Container(color: Colors.amberAccent,),
    Container(color: Colors.tealAccent,),
    Container(color: Colors.deepPurpleAccent,),
    Container(color: Colors.deepOrangeAccent,),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Journey Memo'),
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: btmNavItems,
        selectedItemColor: Colors.black87,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        onTap: onbtmItemClick,
      ),
    );
  }

  void onbtmItemClick(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
}
