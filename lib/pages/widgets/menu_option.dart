import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import '../../utils/app_text_style.dart';

class MenuOption extends StatelessWidget {
  const MenuOption({
    super.key, required this.title, required this.press,
  });
  final String title;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: AutoSizeText(
        title,
        style: AppTextStyle.monteserratStyle(color: Colors.white, fontSize: 18),
      ),
      onTap: press,
    );
  }
}