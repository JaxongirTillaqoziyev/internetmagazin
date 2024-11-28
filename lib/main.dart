import 'package:flutter/material.dart';
import 'package:internetmagazinkosmetik/screens/SlidernigaNamuna.dart';
import 'package:internetmagazinkosmetik/screens/katalogPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    HomePage(), // Carousel Slider Home sahifada
    Katalogpage(),
    Center(child: Text('Notifications Page', style: TextStyle(fontSize: 24))),
    Center(child: Text('Profile Page', style: TextStyle(fontSize: 24))),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // Ikon va nomlarni barqaror qiladi
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedFontSize: 14, // Tanlangan sahifaning shrift o‘lchami
        unselectedFontSize: 12, // Tanlanmagan sahifalarning shrift o‘lchami
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Каталог',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Корзинка',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'профилъ',
          ),
        ],
      ),
    );
  }
}
