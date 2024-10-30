import 'package:flutter/material.dart';
import 'package:novo_projeto/loginPage.dart';
import 'SignUpPage.dart';
import 'timeline/TimelinePage.dart';
import 'forgetPassword.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});
  @override
  State<WelcomePage> createState() => MyAppState();
}

class MyAppState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(4289909129),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
            width: 200,
            height: 200,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(1)),
              child: Image.asset('assets/images/inicial_page.png'),
            ),
          ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: const SizedBox(height: 50),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text('Bem-vindo às suas mensagens motivacionais!', style: GoogleFonts.figtree(fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text('Nossa missão é inspirar e motivar você todos os dias, trazendo palavras que geram positividade, encorajamento e  determinação',
              style: GoogleFonts.figtree(
                  fontSize: 10,
                  color: Colors.black),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                   style: ElevatedButton.styleFrom(
                   foregroundColor: Colors.white,
                   backgroundColor: Color(4278200101),
                   textStyle: GoogleFonts.figtree(
                   fontSize: 13,
                        ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                elevation: 0,
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              child: const Text('Sign Up'),
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
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => SignupPage()),
                );
              },
              child: const Text('Ainda não é um membro de nossa comunidade? Cadastre-se aqui!'),
            ),
          ),
        ],
      ),
    );
  }
}
