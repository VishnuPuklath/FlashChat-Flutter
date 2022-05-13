import 'package:flutter/material.dart';

class WelcomeButton extends StatelessWidget {
  String text;
  Function() onPressed;
  WelcomeButton({required this.text, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    // return Container(
    //   height: 100,
    //   width: 100,
    //   color: Colors.green,
    // );
    return SizedBox(
      width: 380,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: StadiumBorder(),
        ),
        onPressed: onPressed,
        child: Center(
          child: Text(text),
        ),
      ),
    );
  }
}
