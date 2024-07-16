import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImageContainer extends StatelessWidget {
  final String imageUrl;
  const ImageContainer({required this.imageUrl, super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Container(
      width: width * .25,
      height: height * .12,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(30)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: SvgPicture.asset(
          imageUrl, // Use the passed imageUrl
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
