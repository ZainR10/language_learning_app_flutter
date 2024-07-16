import 'package:flutter/material.dart';

class LanguageNameRow extends StatelessWidget {
  final List<String> languageNames;
  const LanguageNameRow({required this.languageNames, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: languageNames
            .map((languageName) => Text(
                  languageName,
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ))
            .toList(),
      ),
    );
  }
}
