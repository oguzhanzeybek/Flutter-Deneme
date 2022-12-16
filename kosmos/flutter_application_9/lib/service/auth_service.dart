import 'package:firebase_auth/firebase_auth.dart';

class authService {
  final firebaseAuth = FirebaseAuth.instance;

  Future signInAnonymos() async {
    try {
      final result = await firebaseAuth.signInAnonymously();
      print(result.user!.uid);
      return result.user;
    } catch (e) {
      print("Anon error $e ");
      return null;
    }
  }

  Future forgotPassword(String email) async {
    try {
      final result = await firebaseAuth.sendPasswordResetEmail(email: email);
      print("mail kutunuzu kontrol ediniz");
    } catch (e) {}
  }
}
