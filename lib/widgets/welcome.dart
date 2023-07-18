import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  Widget _buildTitleText() {
    return Positioned.fill(
      child: Align(
        alignment: Alignment.center,
        child: Container(
          padding: const EdgeInsets.all(30.0),
          decoration: BoxDecoration(
            color: const Color(0xFFFFFFFF).withOpacity(0.75),
          ),
          child: const AutoSizeText(
            'Tasyakuran Pernikahan\n\nLutfi & Laylis',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSubtitleText(BuildContext context) {
    final dday = DateTime(2021, 6, 19);
    final today = DateTime.now();
    final difference = dday.difference(today).inDays;

    var ddayText = difference > 0 ? 'D-$difference until that day' : '';

    return Column(
      children: [
        const Text(
          'Minggu, 6 Agustus 2023, 10:00 - 14:00 WIB',
          style: TextStyle(fontSize: 18),
        ),
        const SizedBox(height: 10),
        AutoSizeText(
          ddayText,
          style: const TextStyle(fontSize: 15, color: Colors.black),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _buildBorder(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.9,
      margin: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0.0),
      decoration: BoxDecoration(border: Border.all(color: Colors.black38)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsetsDirectional.all(20.0),
        child: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.75,
                    child: Image.asset(
                      'assets/images/2.JPG',
                      fit: BoxFit.fitWidth,
                      width: double.infinity,
                    ),
                  ),
                  const SizedBox(height: 40),
                  _buildSubtitleText(context),
                ],
              ),
            ),
            _buildTitleText(),
            _buildBorder(context)
          ],
        ));
  }
}
