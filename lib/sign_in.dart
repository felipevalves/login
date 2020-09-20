import 'package:firebase_core/firebase_core.dart';


Future<String> signInWithGoogle() async {
  await Firebase.initializeApp();


  return 'Felipe';

}

void signOutGoogle() async {
  //await googleSignIn.signOut();
  print('User signed Out');
}