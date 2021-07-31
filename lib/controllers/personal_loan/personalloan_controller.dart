import 'package:my_open_banking/models/personalloan_model.dart';
import 'package:my_open_banking/repositories/personalloan_repository.dart';

class PersonalLoanController {

  List<PersonalLoanModel> personalLoans =[];

  final _repository;

  PersonalLoanController([PersonalLoanRepository? repository]) : _repository = repository ?? PersonalLoanRepository();

  Future start() async{
    personalLoans = await _repository.fetchPersonalLoans();
  }
}