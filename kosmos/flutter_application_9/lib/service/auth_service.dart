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
}