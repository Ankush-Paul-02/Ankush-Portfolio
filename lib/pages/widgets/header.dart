import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/dimensions.dart';
import 'header_web_menu.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          HeaderWebMenu(),
        ],
      ),
    );
  }
}
