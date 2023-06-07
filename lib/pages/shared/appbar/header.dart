import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/dimensions.dart';
import 'header_web_menu.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    final isSmallScreen = size.width < 600; // Adjust the breakpoint as needed

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          if (!isSmallScreen) const HeaderWebMenu(),
        ],
      ),
    );
  }
}
