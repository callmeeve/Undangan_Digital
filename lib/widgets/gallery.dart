import 'package:flutter/material.dart';
import 'package:undangan_digital/model/image.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:undangan_digital/widgets/image_card.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:undangan_digital/widgets/page_transformer.dart';

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
          child: PageTransformer(
            pageViewBuilder: (context, visibilityResolver) {
              return PageView.builder(
                controller: PageController(viewportFraction: 0.85),
                itemCount: imageItems.length,
                itemBuilder: (context, index) {
                  final item = imageItems[index];
                  final pageVisibility =
                      visibilityResolver.resolvePageVisibility(index);

                  return ImageCardItem(
                    item: item,
                    pageVisibility: pageVisibility,
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
