import 'package:flutter/material.dart';
import '../../utils/dimensions.dart';
import 'app_bar_title.dart';

class HeaderWebMenu extends StatelessWidget {
  const HeaderWebMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        AppBarTitle(title: 'Home'),
        SizedBox(width: kDefaultPadding),
        AppBarTitle(title: 'About'),
        SizedBox(width: kDefaultPadding),
        AppBarTitle(title: 'Projects'),
        SizedBox(width: kDefaultPadding),
        AppBarTitle(title: 'Contact'),
        SizedBox(width: kDefaultPadding),
        AppBarTitle(title: 'Resume'),
      ],
    );
  }
}
