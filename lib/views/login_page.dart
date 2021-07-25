import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView( //permite Scroll
        child: Container(
          child: SizedBox(
            width: MediaQuery.of(context).size.width, //ajusta a tela com base no tamanho da tela do celular
            height: MediaQuery.of(context).size.height, //ajusta a tela com base no tamanho da tela do celular
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.width/2.5,
                    width: MediaQuery.of(context).size.width/2.5,
                    child: Image.asset('assets/images/banking.png'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        TextField(
                          onChanged: (text) {
                            email = text;
                          },
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              labelText: 'E-mail',
                              border: OutlineInputBorder()),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextField(
                          onChanged: (text) {
                            password = text;
                          },
                          obscureText: true,
                          decoration: InputDecoration(
                              labelText: 'Password',
                              border: OutlineInputBorder()),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          child: Text(error, style: TextStyle(color: Colors.yellow),),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              if(email.trim()=='a' && password=='a'){
                                setState(() {
                                  error='';
                                });
                                Navigator.of(context).pushReplacementNamed('/home');
                              } else {
                                setState(() {
                                  error='Usuário e senha incorretos.';
                                });
                              }
                            },
                            child: Container(width: double.infinity, child: Text('Entrar', textAlign: TextAlign.center))
                            )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
