import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:google_auth/firebase_options.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
googleLogin() async{
  print("googleLogin method Called");
  GoogleSignIn _googleSignIn = GoogleSignIn();
  try {
    var result = await _googleSignIn.signIn();
    if (result == null) {
      return;
    }

    final userData = await result.authentication;
    final credential = GoogleAuthProvider.credential(
        accessToken: userData.accessToken, idToken: userData.idToken);
    var finalResult =
    await FirebaseAuth.instance.signInWithCredential(credential);
    print("Result $result");
    print(result.displayName);
    print(result.email);
    print(result.photoUrl);

  } catch (error) {
    print(error);
  }
}

Future<void> logout() async{
  await GoogleSignIn().disconnect();
  FirebaseAuth.instance.signOut();
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login page"),
        actions: [
          TextButton(onPressed: logout, child: const Text("logout"),)
        ],
      ),
    body:Center(
    child: ElevatedButton(
    child: const Text('sign in with google'),
    onPressed: googleLogin,
    ),
    )
    );
  }
}
