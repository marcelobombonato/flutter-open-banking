import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(accountName: null, accountEmail: null),
            ListTile(
              leading: Icon(Icons.money_off),
              title: Text('Empréstimo Pessoal'),
              subtitle: Text('Personal Loan'),
              onTap: (){
                Navigator.of(context).pushNamed('/personal-loan');
              },
            )
          ],
        ),
      );
  }
}