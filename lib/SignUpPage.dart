import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:novo_projeto/theme.dart';
import 'loginPage.dart';

class SignupPage extends StatefulWidget {const SignupPage({super.key});
  
  @override
  State<SignupPage> createState() => _SignupState();}

class _SignupState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Sign up", style: TextStyle(color: Colors.black),),
          backgroundColor: Colors.green,),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Text(
              'Cadastro',
              style: TextStyle(
                  fontSize: 35,
                  color: Colors.green,
                  fontWeight: FontWeight.bold),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Form(
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        labelText: 'Name',
                        hintText: 'Enter name',
                        prefixIcon: Icon(Icons.account_box),
                        border: OutlineInputBorder(
                        ),
                      ),
                      onChanged: (String value) {},
                      validator: (value) {
                        return value!.isEmpty ? 'Please enter name' : null;
                      },
                    ),

                    SizedBox(height: 20,),

                    Padding( //espaçamento interno no elemento
                      padding: EdgeInsets.symmetric(),
                      child: TextFormField(
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

                    SizedBox(height: 20,),

                    Padding(
                      padding: EdgeInsets.symmetric(),
                      child: TextFormField(
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
                    SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: MaterialButton(
                        minWidth: double.infinity,
                        onPressed: () {},
                        child: Text('Sign up'),
                        color: Colors.teal,
                        textColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}