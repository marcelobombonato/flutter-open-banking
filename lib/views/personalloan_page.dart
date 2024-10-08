import 'package:flutter/material.dart';
import 'package:my_open_banking/controllers/personal_loan/personalloan_controller.dart';
import 'package:my_open_banking/utils/utils.dart';
import 'package:my_open_banking/views/drawer_widget.dart';

class PersonalLoanPage extends StatefulWidget {

  @override
  _PersonalLoanPageState createState() => _PersonalLoanPageState();
}

class _PersonalLoanPageState extends State<PersonalLoanPage> {

  final controller = PersonalLoanController();

  final utils = DartUtils();

  _success(){
    return ListView.builder(
        itemCount: controller.personalLoans.length,
        itemBuilder: (context, index){
          var loan = controller.personalLoans[index];
          var type = loan.type;
          return Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  leading: Container(
                    constraints: BoxConstraints(minWidth: 50, maxWidth: 50),
                    child: Image.asset("assets/images/"+utils.getLogo(loan.companyCnpj??"")+".png")),
                  title: Text(loan.companyName??"Company Name"),
                  subtitle: Text(type==null?"Loan name" : utils.transformPersonalLoan(type)),
                  horizontalTitleGap: 18,
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                TextButton(
                  child: const Text('Simular'),
                  onPressed: () {/* ... */},
                ),
                TextButton(
                  child: const Text('Detalhes'),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 8),
              ],
                )
              ],
            ),
          );
        },
      );
  }

  _error(){
    return Center(
      child: ElevatedButton(
        onPressed: () {
          controller.start();
        }, 
        child: Text('Tente novamente'),
        ),
    );
  }

  _loading(){
    return Center(
      child: CircularProgressIndicator()
    );
  }

  _start(){
    return Container();
  }

  stateManagement(PersonalLoanState state){
    switch (state) {
      case PersonalLoanState.start:
        return _start();
      case PersonalLoanState.loading:
        return _loading();
      case PersonalLoanState.error:
        return _error();
      case PersonalLoanState.success:
        return _success();
      default:
    }
  }

@override
  void initState() {
    super.initState();

    controller.start();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Empréstimo Pessoal'),
      ),
      drawer: DrawerWidget(),
      body: AnimatedBuilder(animation: controller.state, 
      builder: (context, child) {
        return stateManagement(controller.state.value);
      },),
    );
  }
}