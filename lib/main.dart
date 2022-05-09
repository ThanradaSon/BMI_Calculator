import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyMainPage(),
    );
  }
}

class MyMainPage extends StatefulWidget {
  MyMainPage({Key? key}) : super(key: key);

  @override
  State<MyMainPage> createState() => _MyMainPageState();
}

class _MyMainPageState extends State<MyMainPage> {
  int _selectWidget = 0;

  List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
    ),
    Text(
      'Index 1: Business',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectWidget = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Center(child: _widgetOptions.elementAt(_selectWidget)),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.calculate_outlined), label: 'Calculator'),
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_phone_outlined), label: 'Contact Me'),
        ],
        currentIndex: _selectWidget,
        onTap: _onItemTapped,
      ),
    );
  }
}
