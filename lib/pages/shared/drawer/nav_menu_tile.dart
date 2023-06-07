import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/app_color.dart';
import 'package:my_portfolio/utils/app_text_style.dart';
import 'package:my_portfolio/utils/dimensions.dart';
import 'package:rive/rive.dart';
import '../../../models/rive_assets.dart';

class NavMenuTile extends StatelessWidget {
  const NavMenuTile({
    super.key,
    required this.menu,
    required this.press,
    required this.riveOnInit,
    required this.isActive,
  });

  final RiveAsset menu;
  final VoidCallback press;
  final ValueChanged<Artboard> riveOnInit;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
              left: kDefaultPadding * 0.4, right: kDefaultPadding * 0.4),
          child: Stack(
            children: [
              AnimatedPositioned(
                duration: const Duration(milliseconds: 300),
                
                height: 56,
                width: isActive ? 268 : 0,
                left: 0,
                curve: Curves.fastOutSlowIn,
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.themeColor,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
              ),
              ListTile(
                onTap: press,
                leading: SizedBox(
                  height: 34,
                  width: 34,
                  child: RiveAnimation.asset(
                    menu.src,
                    artboard: menu.artBoard,
                    onInit: riveOnInit,
                  ),
                ),
                title: Text(
                  menu.title,
                  style: AppTextStyle.headLineTextStyle(fontSize: 20),
                ),
              ),
              const SizedBox(height: kDefaultPadding * 3)
            ],
          ),
        ),
      ],
    );
  }
}
