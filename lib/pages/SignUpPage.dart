import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:novo_projeto/services/autentica_servi%C3%A7o.dart';
import 'loginPage.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupState();
}

class _SignupState extends State<SignupPage> {
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();

  AutenticaServico _autenticaServico = AutenticaServico();

//  get nome => null;
//  get senha => null;
//  get email => null;



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          // title: const Text("Sign up", style: TextStyle(color: Colors.black),),
          //backgroundColor: Colors.green,
        ),
        body: SingleChildScrollView(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
                width: 100,
                height: 100,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(30)),
                  child: Image.asset('assets/images/motivation.png'),
                )),
            const SizedBox(height: 20),
            Text(
              'Cadastro',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.teal, fontWeight: FontWeight.bold
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Form(
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      controller: _nomeController,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        labelText: 'Name',
                        hintText: 'Enter name',
                        prefixIcon: Icon(Icons.account_box),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                      onChanged: (String value) {},
                      validator: (value) {
                        return value!.isEmpty ? 'Please enter name' : null;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      //espaçamento interno no elemento
                      padding: EdgeInsets.symmetric(),
                      child: TextFormField(
                        controller: _emailController,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          hintText: 'Enter Email',
                          prefixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                        onChanged: (String value) {},
                        validator: (value) {
                          return value!.isEmpty ? 'Please enter email' : null;
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(),
                      child: TextFormField(
                        obscureText: true,
                        controller: _senhaController,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          hintText: 'Enter Password',
                          prefixIcon: Icon(Icons.password),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                        onChanged: (String value) {},
                        validator: (value) {
                          return value!.isEmpty
                              ? 'Please enter password'
                              : null;
                        },
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),



                    Padding(

                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: MaterialButton(
                        minWidth: double.infinity,
                        onPressed: () {
                          botao();
                          Navigator.of(context).pop(
                            MaterialPageRoute(
                                builder: (context) => LoginPage()),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: const Text('Cadastro com sucesso!'),
                              backgroundColor: Colors.green,
                              duration: Duration(
                                  seconds: 3), // Duração que a mensagem ficará visível
                            ),
                          );
                        },
                        child: Text('Sign up'),
                        color: Colors.teal,
                        textColor: Colors.white,
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
                            MaterialPageRoute(
                                builder: (context) => LoginPage()),
                          );
                        },
                        child: const Text('Voltar'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      ),
    );
  }
  botao(){
    String nome = _nomeController.text;
    String email = _emailController.text;
    String senha = _senhaController.text;

    print("${_senhaController.text}, ${_emailController}, ${_nomeController}");
    _autenticaServico.cadastrarUsuario(nome: nome, senha: senha, email: email);
  }
}
