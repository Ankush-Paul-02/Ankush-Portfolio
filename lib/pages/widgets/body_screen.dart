import 'package:flutter/material.dart';
import 'package:my_portfolio/pages/widgets/whole_intro.dart';
import '../../utils/app_color.dart';
import '../../utils/dimensions.dart';


class BodyScreen extends StatelessWidget {
  const BodyScreen({
    super.key,
    required this.isSmallScreen,
    required this.size,
    required this.isTabletScreen,
  });

  final bool isSmallScreen;
  final Size size;
  final bool isTabletScreen;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: isSmallScreen ? kDefaultPadding : size.width * 0.08,
          vertical: isSmallScreen ? kDefaultPadding : size.height * 0.08,
        ),
        child: Column(
          children: [
            if (isSmallScreen)
              SizedBox(
                height: size.height * 0.4,
                child: Image.asset(
                  'assets/images/profile.png',
                  fit: BoxFit.contain,
                ),
              ),
            //! Intro
            MyIntro(
                isSmallScreen: isSmallScreen,
                isTabletScreen: isTabletScreen,
                size: size),
            Divider(
              color: AppColors.glowColor,
              thickness: 0.1,
            ),
          ],
        ),
      ),
    );
  }
}