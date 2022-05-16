import 'package:flash_chat/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  late String email;
  late String password;
  final _auth = FirebaseAuth.instance;
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
            keyboardType: TextInputType.emailAddress,
            textAlign: TextAlign.center,
            onChanged: ((value) => email = value),
            decoration:
                kTextFieldDecoration.copyWith(hintText: 'Enter your Email'),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            obscureText: true,
            textAlign: TextAlign.center,
            onChanged: ((value) => password = value),
            decoration:
                kTextFieldDecoration.copyWith(hintText: 'Enter your Password'),
          ),
          const SizedBox(
            height: 10,
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
                  // print('Email=' + email);
                  // print('password=' + password);
                  try {
                    final newUser = await _auth.createUserWithEmailAndPassword(
                        email: email, password: password);
                    if (newUser != null) {
                      Navigator.pushNamed(context, '/chat');
                    }
                  } catch (e) {
                    print(e);
                  }
                },
                child: Text('Register')),
          ),
        ],
      )),
    );
  }
}
