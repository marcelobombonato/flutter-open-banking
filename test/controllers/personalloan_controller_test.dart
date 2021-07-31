import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:my_open_banking/controllers/personal_loan/personalloan_controller.dart';
import 'package:my_open_banking/models/personalloan_model.dart';
import 'package:my_open_banking/repositories/personalloan_repository.dart';

class PersonalLoanRepositoryMock extends Mock implements PersonalLoanRepository{}

main (){
  final repository = PersonalLoanRepositoryMock();

  final controller = PersonalLoanController(repository);

  test('deve preecher variável personalloans', () async {

    when(repository.fetchPersonalLoans()).thenAnswer((_) async => [PersonalLoanModel()]);

    await controller.start();
    expect(controller.personalLoans.isNotEmpty, true);
  });
}