import 'package:flutter/cupertino.dart';
import 'package:my_open_banking/models/personalloan_model.dart';
import 'package:my_open_banking/repositories/personalloan_repository.dart';

class PersonalLoanController {

  List<PersonalLoanModel> personalLoans =[];

  final _repository;

  final state = ValueNotifier<PersonalLoanState>(PersonalLoanState.start);

  PersonalLoanController([PersonalLoanRepository? repository]) : _repository = repository ?? PersonalLoanRepository();

  Future start() async{
      state.value = PersonalLoanState.loading;
    try{
      personalLoans = await _repository.fetchPersonalLoans();
      state.value = PersonalLoanState.success;
    } catch (e) {
      state.value = PersonalLoanState.error;
    }
  }

  String transform(String word){
    if (word.isEmpty) {
    return word;
  }
  word = word.replaceAll("_", " ").toLowerCase();
  return word[0].toUpperCase() + word.substring(1);
  }
}

enum PersonalLoanState {
  start, loading, success, error
}