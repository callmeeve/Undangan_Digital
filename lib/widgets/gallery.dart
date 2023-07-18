import 'package:flutter/material.dart';
import 'package:undangan_digital/model/image.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:undangan_digital/widgets/image_card.dart';

class Gallery extends StatelessWidget {
  const Gallery({Key? key}) : super(key: key);

  Widget _buildImage(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.1,
      child: Image.asset(
        'assets/images/flower.png',
        fit: BoxFit.contain,
      ),
    );
  }

  Widget _buildTitleText() {
    return const Text(
      'Galeri Foto',
      style: TextStyle(
        color: Color.fromRGBO(41, 82, 56, 100),
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildImage(context),
        _buildTitleText(),
        const SizedBox(height: 50.0),
        SizedBox.fromSize(
          size: const Size.fromHeight(500.0),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: imageItems.length,
            itemBuilder: (context, index) {
              return SizedBox(
                width: MediaQuery.of(context).size.width,
                child: PageView.builder(
                  itemCount: imageItems.length,
                  itemBuilder: (context, index) {
                    final item = imageItems[index];
                    return ImageCardItem(
                      item: item,
                    );
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
