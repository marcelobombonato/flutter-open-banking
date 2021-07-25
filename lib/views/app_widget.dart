import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_open_banking/views/personal_loan.dart';

import 'home_page.dart';
import 'login_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(brightness: Brightness.dark),
        initialRoute: "/",
        routes: {
          '/': (context) => LoginPage(),
          '/home': (context) => HomePage(),
          '/personal-loan': (context) => PersonalLoan(),
        });
  }
}
