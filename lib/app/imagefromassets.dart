import 'package:flutter/material.dart';

class ImageFromAssets extends StatefulWidget {
  final String imagePath;

  const ImageFromAssets({Key? key, required this.imagePath}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ImageFromAssetsState createState() => _ImageFromAssetsState();
}

class _ImageFromAssetsState extends State<ImageFromAssets> {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      widget.imagePath,
      width: 300,
      height: 200,
      alignment: Alignment.center,
    );
  }
}
