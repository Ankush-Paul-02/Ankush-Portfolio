import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import '../../../utils/app_text_style.dart';

class MenuOption extends StatelessWidget {
  const MenuOption({
    super.key,
    required this.title,
    required this.press,
    required this.riveAsset,
    required this.artboard,
  });
  final String title, riveAsset, artboard;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SizedBox(
        height: 34,
        width: 34,
        child: RiveAnimation.asset(
          riveAsset,
          artboard: artboard,
          onInit: (artboard) {},
        ),
      ),
      title: AutoSizeText(
        title,
        style: AppTextStyle.monteserratStyle(color: Colors.white, fontSize: 18),
      ),
      onTap: press,
    );
  }
}
