// ignore_for_file: avoid_print

import 'package:firebase_auth/firebase_auth.dart' ;

Future signup(String email , String password)async{
  try {
  final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: email, password: password);
  print("success");
} on FirebaseAuthException catch (e) {
  if (e.code == 'weak-password') {
    print('The password provided is too weak.');
  } else if (e.code == 'email-already-in-use') {
    print('The account already exists for that email.');
  }
} catch (e) {
  print(e);
}
}