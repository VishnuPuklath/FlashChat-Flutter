import 'package:flash_chat/components/login_textfield.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

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
          LoginTextField(
            onChanged: () {},
            hinttext: 'Enter your Email',
          ),
          const SizedBox(
            height: 20,
          ),
          LoginTextField(
            onChanged: () {},
            hinttext: 'Enter your Password',
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
                onPressed: () {
                  print('Register button clicked');
                },
                child: Text('Register')),
          ),
        ],
      )),
    );
  }
}
