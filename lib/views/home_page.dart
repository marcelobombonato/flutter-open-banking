import 'package:flutter/material.dart';
import 'package:my_open_banking/views/drawer_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Open Banking'),
      ),
      drawer: DrawerWidget(),
    );
  }
}