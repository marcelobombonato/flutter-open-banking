import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:my_open_banking/models/personalloan_model.dart';

class PersonalLoanController {

  PersonalLoanController(){}
  Future<PersonalLoanModel?> getPersonalLoans() async {
    String WEB_BASE_USE = 'https://j2c91xrdq5.execute-api.us-east-1.amazonaws.com/dev/personal-loan';

    try {
      var response = await http.get(Uri.parse((url)));
      var json = jsonDecode(response.body);
      var personalLoans = PersonalLoanModel.fromJson(json);
      print(personalLoans);
      return personalLoans;
    } catch (e) {
      print(e.toString());
      throw e.toString();
    }
  }
}