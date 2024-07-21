import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final double height;
  final double width;
  final String title;
  final VoidCallback onPress;

  const RoundButton(
      {required this.width,
      required this.height,
      required this.title,
      required this.onPress,
      super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: height,
        width: width,
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.indigo.withOpacity(.7),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2), // Adjust opacity as needed
              spreadRadius: 2,
              blurRadius: 2,
              offset: const Offset(3, 8), // changes position of shadow
            ),
          ],
        ),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(color: Colors.white, fontSize: 15),
          ),
        ),
      ),
    );
  }
}
