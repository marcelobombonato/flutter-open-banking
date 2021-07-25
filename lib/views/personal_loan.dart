import 'package:flutter/material.dart';
import 'package:my_open_banking/views/drawer_widget.dart';

class PersonalLoan extends StatefulWidget {
  @override
  _PersonalLoanState createState() => _PersonalLoanState();
}

class _PersonalLoanState extends State<PersonalLoan> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('My Open Banking'),
      ),
      drawer: DrawerWidget()
    );
  }
}