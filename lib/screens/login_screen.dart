import 'package:firebase_auth/firebase_auth.dart';
import 'package:flash_chat/utils/constant.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _auth = FirebaseAuth.instance;
  late String email;
  late String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Hero(
            tag: 'logo',
            child: Container(
              child: Image.asset('images/flashlogo.png'),
              height: 200,
            ),
          ),
          TextField(
              onChanged: (value) {
                email = value;
              },
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,
              decoration:
                  kTextFieldDecoration.copyWith(hintText: 'Enter your Email')),
          const SizedBox(
            height: 20,
          ),
          TextField(
            onChanged: (value) {
              password = value;
            },
            textAlign: TextAlign.center,
            obscureText: true,
            decoration:
                kTextFieldDecoration.copyWith(hintText: 'Enter your password'),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 45,
            width: 100,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.lightBlueAccent,
                  shape: StadiumBorder(),
                ),
                onPressed: () async {
                  try {
                    final user = await _auth.signInWithEmailAndPassword(
                        email: email, password: password);
                    if (user != null) {
                      Navigator.pushNamed(context, '/chat');
                    }
                  } catch (e) {
                    print(e);
                  }
                },
                child: Text('Login')),
          ),
        ],
      )),
    );
  }
}
