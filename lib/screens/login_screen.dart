import 'package:flash_chat/components/login_textfield.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Image.asset('images/flashlogo.png'),
            height: 200,
          ),
          LoginTextField(
            onChanged: () {},
            hinttext: 'Enter your Email',
          ),
          const SizedBox(
            height: 20,
          ),
          LoginTextField(hinttext: 'Enter your password', onChanged: () {}),
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
                onPressed: () {
                  print('Login button clicked');
                },
                child: Text('Login')),
          ),
        ],
      )),
    );
  }
}
