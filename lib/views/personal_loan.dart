import 'package:flutter/material.dart';
import 'package:my_open_banking/controllers/personal_loan/personalloan_controller.dart';
import 'package:my_open_banking/models/personalloan_model.dart';
import 'package:my_open_banking/views/drawer_widget.dart';

class PersonalLoan extends StatefulWidget {
  @override
  _PersonalLoanState createState() => _PersonalLoanState();
}

class _PersonalLoanState extends State<PersonalLoan> {

  PersonalLoanController personalLoanController = PersonalLoanController();

  PersonalLoanModel? personalLoans ;
  String? type;
  String? companyName;
  String? companyCnpj;

  List<Widget> cards = [];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Personal Loan'),
      ),
      drawer: DrawerWidget(),
      // body: ListView.builder(itemBuilder: (context, index){

      // })
    );
  }
}