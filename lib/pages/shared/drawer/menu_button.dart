import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/app_color.dart';
import 'package:rive/rive.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({
    super.key,
    required this.press,
    required this.riverOnInit,
  });

  final VoidCallback press;
  final ValueChanged<Artboard> riverOnInit;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              color: AppColors.backgroundColor, shape: BoxShape.circle),
          child: RiveAnimation.asset('assets/RiveAssets/menu_button.riv',
              onInit: riverOnInit)),
    );
  }
}
