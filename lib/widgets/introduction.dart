import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Introduction extends StatelessWidget {
  final _googleFormUrl = 'https://forms.gle/FJubdbijopQB3f3s6';

  const Introduction({Key? key}) : super(key: key);

  // ignore: deprecated_member_use
  void _launchURL() async => await canLaunch(_googleFormUrl)
      // ignore: deprecated_member_use
      ? await launch(_googleFormUrl)
      : throw 'Could not launch $_googleFormUrl';

  Widget _buildName(String desc, father, mother, name) {
    return Center(
      child: Column(
        children: [
          Text(
            desc,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            name,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Anak dari",
            style: TextStyle(fontSize: 14),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    father,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    mother,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.all(20.0),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
            child: Image.asset(
              'assets/images/hand.png',
              fit: BoxFit.contain,
            ),
          ),
          const AutoSizeText(
            'Undangan',
            style: TextStyle(
              color: Color.fromRGBO(41, 82, 56, 100),
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 50),
          _buildName(
            'Groom',
            'Suharno (Alm)',
            'Tin Sukesi',
            'Lutfi Arisandi',
          ),
          const SizedBox(height: 30),
          _buildName(
            'Bride',
            'Hariyanto Arifin',
            'Siti Shohifah',
            'Lailis Wahyuni',
          ),
          const SizedBox(height: 50),
          const AutoSizeText(
            '“Dan segala sesuatu Kami Ciptakan Berpasang-pasangan supaya kamu mengingat kebesaran Allah.” (QS Az-Zariyat: 49)',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          const SizedBox(height: 20),
          const AutoSizeText(
            'Silahkan Konfirmasi Kehadiran Anda.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => _launchURL(),
            child: const Text('BUKA'),
          )
        ],
      ),
    );
  }
}
