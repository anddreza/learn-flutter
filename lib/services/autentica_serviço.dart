import 'package:firebase_auth/firebase_auth.dart';

class AutenticaServico {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  cadastrarUsuario({
    required String nome,
    required String senha,
    required String email,
  }) {
     _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: senha,
      );
  }

  Future<String?> logarUsuarios({required String email, required String senha}) async{
      try {
        await _firebaseAuth.signInWithEmailAndPassword(email: email, password: senha);
        return null;
      } on Exception catch (e) {
        print("Usuario não cadastrado!");
      }
      return null;
  }
}