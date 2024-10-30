import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'SignUpPage.dart';
import 'timeline/TimelinePage.dart';
import 'forgetPassword.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => MyAppState();
}

class MyAppState extends State<LoginPage> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(143, 188, 143, 63),
      body: Stack(
          children: [
            Opacity(
           //    key: -80!,
              // top: 0,
              // bottom: 0,
              opacity: 0.5,
              child: Image.asset(
                'assets/images/para_fundo_tela_login.png',
                fit: BoxFit.cover,
              ),
            ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 100,
                height: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: Image.asset('assets/images/motivation.png'),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Welcome Back',
                  style: GoogleFonts.figtree(
                    fontSize: 35,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                'Enter your credential to login',
                style:  GoogleFonts.figtree(
                    fontSize: 10,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
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
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(),
                        child: TextFormField(
                          obscureText: true,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            hintText: 'Enter password',
                            prefixIcon: const Icon(Icons.password),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                          ),
                          onChanged: (String text) {
                            setState(() {
                              password = text;
                            });
                          },
                          validator: (value) {
                            return value!.isEmpty
                                ? 'Please enter password'
                                : null;
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 45),
                        child: MaterialButton(
                          minWidth: double.infinity,
                          onPressed: () {
                           // if (email == 'and' && password == '123') {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => const HomePage()),
                              );
                           // }
                          },
                          color: Color(4278200101),
                          textColor: Colors.white,
                          child: const Text('Login'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
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
                      MaterialPageRoute(builder: (context) => forgetPassword()),
                    );
                  },
                  child: const Text('Esqueceu a senha?'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
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
                  child: const Text('Ainda não tem cadastro?'),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
