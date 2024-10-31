import 'package:flutter/material.dart';
import 'SignUpPage.dart';
import '../timeline/TimelinePage.dart';
import 'loginPage.dart';

class forgetPassword extends StatefulWidget {
  const forgetPassword({super.key});

  @override
  State<forgetPassword> createState() => _forgetPasswordState();
}

class _forgetPasswordState extends State<forgetPassword> {
  String email = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 100,
            height: 100,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              child: Image.asset('assets/images/motivation.png'),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Esqueceu a senha? '
                'Insira o email!',
            style: TextStyle(
                fontSize: 15,
                color: Colors.teal, fontWeight: FontWeight.bold
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Form(
              child: Column(
                children: <Widget>[
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      hintText: 'Enter email',
                      prefixIcon: const Icon(Icons.email),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                    onChanged: (String text) {
                      setState(() {
                        email = text;
                      });
                    },
                    validator: (value) {
                      return value!.isEmpty ? 'Please enter email' : null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35),
                    child: MaterialButton(
                      minWidth: double.infinity,
                      onPressed: () {
                        if (email == 'and') {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: const Text('Email enviado com sucesso!'),
                              backgroundColor: Colors.green,
                              duration: Duration(
                                  seconds: 3), // Duração que a mensagem ficará visível
                            ),
                          );
                        }
                        ;
                      },
                      child: const Text('Enviar link de recuperação'),
                      color: Colors.teal,
                      textColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(
                  fontSize: 10,
                  color: Colors.teal,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop(
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              child: const Text('Voltar'),
            ),
          )
        ],
      ),
    );
  }
}
