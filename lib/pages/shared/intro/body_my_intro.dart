import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/pages/shared/social/social_pages.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import '../../../utils/app_text_style.dart';
import '../../../utils/dimensions.dart';

class BodyMyIntro extends StatelessWidget {
  const BodyMyIntro({
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
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: kDefaultPadding * 2),
          FadeInDown(
            duration: const Duration(milliseconds: 1200),
            child: Text(
              'Hola, It\'s Me',
              style: AppTextStyle.monteserratStyle(
                color: Colors.white,
                fontSize: isSmallScreen ? 24 : 32,
              ),
            ),
          ),
          Constants.sizedBox(height: 15),
          FadeInRight(
            duration: const Duration(milliseconds: 1400),
            child: Text(
              'Ankush Paul',
              style: AppTextStyle.headLineTextStyle(
                fontSize: isSmallScreen ? 20 : 40,
              ),
            ),
          ),
          Constants.sizedBox(height: 15),
          FadeInLeft(
            duration: const Duration(milliseconds: 1400),
            child: Wrap(
              children: [
                Text(
                  'And I\'m a ',
                  style: AppTextStyle.monteserratStyle(
                    color: Colors.white,
                    fontSize: isSmallScreen
                        ? 18
                        : isTabletScreen || kIsWeb
                            ? 26
                            : 32,
                  ),
                ),
                AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText(
                      'Flutter Developer',
                      textStyle: AppTextStyle.monteserratStyle(
                        color: const Color(0xff6A01FB),
                        fontSize: isSmallScreen
                            ? 18
                            : isTabletScreen || kIsWeb
                                ? 26
                                : 32,
                      ),
                    ),
                  ],
                  totalRepeatCount: 50,
                  pause: const Duration(milliseconds: 1000),
                  displayFullTextOnTap: true,
                  stopPauseOnTap: true,
                ),
              ],
            ),
          ),
          Constants.sizedBox(height: 15),
          FadeInDown(
            duration: const Duration(milliseconds: 1600),
            child: SizedBox(
              width: isSmallScreen ? size.width : size.width * 0.5,
              child: Text(
                'I aspire to a challenging career in Software Development to use my learned skills and experience for the best result.',
                style: AppTextStyle.normalStyle(
                  fontSize: isSmallScreen ? 20 : 26,
                ),
              ),
            ),
          ),
          Constants.sizedBox(height: 22),
          /**
                   * Social Pages
                   */
          const SocialPages(),
          Constants.sizedBox(height: 18),
        ],
      ),
    );
  }
}
