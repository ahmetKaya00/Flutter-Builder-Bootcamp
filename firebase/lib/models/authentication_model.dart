import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationModel {
final FirebaseAuth _auth = FirebaseAuth.instance;


//Email ve şifre ile giriş yap
Future<User?> loginWithEmailAndPassword(String email, String password) async {
    try{
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: email.trim(),
          password: password.trim(),
      );
      return userCredential.user;
    }on FirebaseAuthException catch(e){
      throw Exception(e.message);
    }
  }

  //Email ve şifre ile kayıt ol
Future<User?> registerEmailAndPassword(String email, String password) async{
  try{
    UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: email.trim(),
        password: password.trim(),
    );
  }on FirebaseAuthException catch (e){
    throw Exception(e.message);
    }
  }

//Çıkış Yap
Future<void> signOut() async{
  await _auth.signOut();
}

//Şu anki kullanıcı bilgisi
User? get currentUser => _auth.currentUser;
}
