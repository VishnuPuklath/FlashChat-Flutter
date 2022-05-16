import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flash_chat/components/welcome_button.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;
  Animation? animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
    animation = CurvedAnimation(parent: controller!, curve: Curves.decelerate);
    controller!.forward();
    controller!.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Hero(
                  tag: 'logo',
                  child: Container(
                    height: animation!.value * 100,
                    child: const Image(
                      image: AssetImage('images/flashlogo.png'),
                    ),
                  ),
                ),
                TypewriterAnimatedTextKit(
                  text: ['FLASH CHAT'],
                  textStyle: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            WelcomeButton(
                color: Colors.lightBlueAccent,
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
              color: Colors.blue,
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
