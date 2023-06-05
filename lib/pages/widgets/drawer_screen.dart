import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/app_color.dart';
import 'package:my_portfolio/utils/app_text_style.dart';

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
          ListTile(
            title: AutoSizeText(
              'Home',
              style: AppTextStyle.monteserratStyle(
                  color: Colors.white, fontSize: 18),
            ),
            onTap: () {
              // Handle Home drawer item tap
            },
          ),
          ListTile(
            title: AutoSizeText(
              'About',
              style: AppTextStyle.monteserratStyle(
                  color: Colors.white, fontSize: 18),
            ),
            onTap: () {
              // Handle About drawer item tap
            },
          ),
          ListTile(
            title: AutoSizeText(
              'Projects',
              style: AppTextStyle.monteserratStyle(
                  color: Colors.white, fontSize: 18),
            ),
            onTap: () {
              // Handle Projects drawer item tap
            },
          ),
          ListTile(
            title: AutoSizeText(
              'Contact',
              style: AppTextStyle.monteserratStyle(
                  color: Colors.white, fontSize: 18),
            ),
            onTap: () {
              // Handle Contact drawer item tap
            },
          ),
          ListTile(
            title: AutoSizeText(
              'Resume',
              style: AppTextStyle.monteserratStyle(
                  color: Colors.white, fontSize: 18),
            ),
            onTap: () {
              // Handle Resume drawer item tap
            },
          ),
        ],
      ),
    );
  }
}
