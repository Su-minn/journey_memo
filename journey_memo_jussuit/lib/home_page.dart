import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  HomePage({
    Key? key,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<BottomNavigationBarItem> btmNavItems = [
    BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ""),
    BottomNavigationBarItem(icon: Icon(Icons.search_outlined), label: ""),
    BottomNavigationBarItem(icon: Icon(Icons.add_a_photo_outlined), label: ""),
    BottomNavigationBarItem(icon: Icon(Icons.healing_outlined), label: ""),
    BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined), label: ""),
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
            child: Text(
          'Journey Memo',
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
        )),
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
