// import 'package:dio/dio.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mockito/mockito.dart';
// import 'package:my_open_banking/repositories/personalloan_repository.dart';

// class DioMock extends Mock implements Dio{
  
// }
// main(){
//   final dio = DioMock();
//   final repository = PersonalLoanRepository(dio);
//   test('Deve trazer uma lista de PersonalLoanModel', () async {

//     when(dio.get(any)).thenAnswer((realInvocation) => null)
//     final list = await repository.fetchPersonalLoans();
//     print(list[0].companyName);
//   });
// }

// Flutterando #47
// Está tendo problema quando tenta-se mockar dio.get com any