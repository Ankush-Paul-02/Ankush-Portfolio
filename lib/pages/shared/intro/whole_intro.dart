import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'body_my_intro.dart';

class MyIntro extends StatelessWidget {
  const MyIntro({
    super.key,
    required this.isSmallScreen,
    required this.isTabletScreen,
    required this.size,
  });

  final bool isSmallScreen;
  final bool isTabletScreen;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        BodyMyIntro(
            isSmallScreen: isSmallScreen,
            isTabletScreen: isTabletScreen,
            size: size),
        if ((kIsWeb && !isSmallScreen))
          Expanded(
            child: SizedBox(
              height: size.height * 0.8,
              width: size.width * 0.3,
              child: Image.asset(
                'assets/images/profile.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
      ],
    );
  }
}
