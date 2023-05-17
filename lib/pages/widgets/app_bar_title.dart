import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class AppBarTitle extends StatelessWidget {
  final String title;
  const AppBarTitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      title,
      minFontSize: 16,
      style: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }
}
