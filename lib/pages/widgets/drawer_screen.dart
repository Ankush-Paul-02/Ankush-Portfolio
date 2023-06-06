import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/app_color.dart';
import 'package:my_portfolio/utils/dimensions.dart';

import 'menu_option.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.backgroundColor,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
            child: Column(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'A',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Kizard',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: kDefaultPadding,
                ),
                const AutoSizeText(
                  'Ankush Paul',
                  minFontSize: 16,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const AutoSizeText(
                  'Flutter Developer',
                  minFontSize: 16,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: AppColors.glowColor,
            thickness: 0.1,
          ),
          const SizedBox(height: kDefaultPadding * 2),
          MenuOption(title: 'Home', press: () {}),
          MenuOption(title: 'About', press: () {}),
          MenuOption(title: 'Projects', press: () {}),
          MenuOption(title: 'Resume', press: () {}),
          MenuOption(title: 'Contact', press: () {}),
        ],
      ),
    );
  }
}


