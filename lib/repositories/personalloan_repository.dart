import 'package:dio/dio.dart';
import 'package:my_open_banking/models/personalloan_model.dart';

class PersonalLoanRepository {
  Dio dio = Dio();

  final personalLoanURL = 'https://j2c91xrdq5.execute-api.us-east-1.amazonaws.com/dev/personal-loan';

  PersonalLoanRepository([Dio? client]){
    if(client != null){
      this.dio = client;
    }
  }

  Future<List<PersonalLoanModel>>? fetchPersonalLoans() async {
    final response = await  dio.get(personalLoanURL);
    final list = response.data as List;
    if(list.isNotEmpty)
      return list.map((json) => PersonalLoanModel.fromJson(json)).toList();
    else {
      return [];
    }
  }
}