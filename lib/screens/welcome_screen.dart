import 'package:flash_chat/components/welcome_button.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Container(
                  height: 100,
                  child: const Image(
                    image: AssetImage('images/flashlogo.png'),
                  ),
                ),
                const Text(
                  'FLASH CHAT',
                  style: TextStyle(
                    fontSize: 43.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            WelcomeButton(
                text: 'Log In',
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                  // Navigator.push(context, MaterialPageRoute(builder: (context) {
                  //   return LoginScreen();
                  // }));
                }),
            const SizedBox(
              height: 10,
            ),
            // SizedBox(
            //   height: 20,
            // ),
            WelcomeButton(
              text: 'Register',
              onPressed: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) {
                //   return RegistrationScreen();
                // }));
                Navigator.pushNamed(context, '/register');
              },
            )
          ],
        ),
      ),
    );
  }
}
