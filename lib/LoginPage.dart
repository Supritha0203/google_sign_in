import 'package:flutter/material.dart';
import 'package:google_auth/auth_service.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(
    title: const Text("google authentication"),
  ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("hello this is google sign in "),
            GestureDetector(
              
              onTap: (){
                AuthService().signInWithGoogle();
              },
              child: const Image(image: AssetImage('assets/goo.png')),
            )
          ],
        ),
      ),
    );
  }
}
