import 'package:flutter/material.dart';
import '../../../utils/dimensions.dart';
import 'app_bar_title.dart';

class HeaderWebMenu extends StatelessWidget {
  const HeaderWebMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isSmallScreen = MediaQuery.of(context).size.width <
        600; // Adjust the breakpoint as needed

    return Row(
      children: [
        if (!isSmallScreen) ...[
          const AppBarTitle(title: 'Home'),
          const SizedBox(width: kDefaultPadding),
          const AppBarTitle(title: 'About'),
          const SizedBox(width: kDefaultPadding),
          const AppBarTitle(title: 'Projects'),
          const SizedBox(width: kDefaultPadding),
          const AppBarTitle(title: 'Contact'),
          const SizedBox(width: kDefaultPadding),
          const AppBarTitle(title: 'Resume'),
        ],
      ],
    );
  }
}
