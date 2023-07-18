import 'package:flutter/material.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
import 'dart:ui' as ui;

class Roadmap extends StatefulWidget {
  const Roadmap({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _RoadmapState createState() => _RoadmapState();
}

class _RoadmapState extends State<Roadmap> {
  // ignore: non_constant_identifier_names

  Widget getMap() {
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory('iframe', (int viewId) {
      var iframe = html.IFrameElement();
      iframe.src =
          'https://www.google.com/maps/embed?pb=!3m2!1sen!2sid!4v1689653097373!5m2!1sen!2sid!6m8!1m7!1sb-qPgQj8X1TKsC1hxDM1sw!2m2!1d-8.195214298578312!2d114.3758752387169!3f288.84146753197206!4f6.674735802766207!5f0.7820865974627469'; // embedded google map url
      return iframe;
    });

    return const HtmlElementView(viewType: 'iframe');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const Text(
            'Lokasi',
            style: TextStyle(
              color: Color.fromRGBO(41, 82, 56, 100),
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 50),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.75,
            height: MediaQuery.of(context).size.height * 0.5,
            child: getMap(),
          ),
          const SizedBox(height: 20),
          const Text(
            'Kediaman Mempelai Pria, Jalan Lawu 2, Gang Senyum, Singotrunan, Kec. Banyuwangi, Kabupaten Banyuwangi, Jawa Timur',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
