import 'package:flutter/material.dart';
import 'package:undangan_digital/model/image.dart';

class ImageCardItem extends StatelessWidget {
  const ImageCardItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  final ImageItem item;

  @override
  Widget build(BuildContext context) {
    var image = Image.asset(
      item.imageUrl,
      fit: BoxFit.cover,
    );

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 16.0,
        horizontal: 8.0,
      ),
      child: Material(
        elevation: 4.0,
        borderRadius: BorderRadius.circular(8.0),
        child: Stack(
          fit: StackFit.expand,
          children: [
            image,
          ],
        ),
      ),
    );
  }
}
