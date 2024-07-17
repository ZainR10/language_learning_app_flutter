import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImageContainer extends StatelessWidget {
  final double height;
  final double width;
  final String imageUrl;

  const ImageContainer({
    required this.height,
    required this.width,
    required this.imageUrl,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: SvgPicture.asset(
          imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
