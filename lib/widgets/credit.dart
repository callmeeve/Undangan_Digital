import 'package:flutter/material.dart';

class Credit extends StatelessWidget {
  const Credit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30),
      child: const Text(
        "© 2023, Lutfi & Laylis",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 10,
          color: Colors.black,
        ),
      ),
    );
  }
}
