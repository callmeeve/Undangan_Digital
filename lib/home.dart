import 'package:flutter/material.dart';
import 'package:undangan_digital/widgets/congratulation_gift.dart';
import 'package:undangan_digital/widgets/credit.dart';
import 'package:undangan_digital/widgets/custom_divider.dart';
import 'package:undangan_digital/widgets/gallery.dart';
import 'package:undangan_digital/widgets/introduction.dart';
import 'package:undangan_digital/widgets/roadmap.dart';
import 'package:undangan_digital/widgets/welcome.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            Welcome(),
            CustomDivider(),
            Introduction(),
            CustomDivider(),
            Gallery(),
            CustomDivider(),
            Roadmap(),
            CustomDivider(),
            CongratulationGift(),
            Credit()
          ],
        ),
      ),
    );
  }
}
