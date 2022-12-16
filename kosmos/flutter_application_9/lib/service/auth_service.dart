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

  Future<String?> SignIn(String email, String password) async {
    String? res;
    try {
      final result = await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      res = "succes";
    } on FirebaseAuthException catch (e) {
      if(e.code == "user-not-found"){
        res = "kullanici bulunamadi";
      }else if(e.code == "wrong-password"){
        res="sifre yanlis";
      }else if(e.code =="user-disabled"){
        res="kullanici pasif";
      }
    }
    return res;
  }
}
