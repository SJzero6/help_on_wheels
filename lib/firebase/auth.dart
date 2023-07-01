import 'package:firebase_auth/firebase_auth.dart';

class auth {
  final FirebaseAuth _firebaseAuth =FirebaseAuth.instance;

  User? get currentuser => _firebaseAuth.currentUser;
  Stream <User?> get authstatechanges => _firebaseAuth.authStateChanges();

  Future <void> signinwithemailandpassword({
    required String email, required String password})
    async {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email, 
        password: password);
    }
    Future <void> signupwithemailandpassword({
    required String email, required String password})
    async {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email, 
        password: password);
    }
    Future <void>signout() async{
      await _firebaseAuth.signOut();
    }
}