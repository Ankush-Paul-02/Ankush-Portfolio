import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/pages/widgets/drawer_screen.dart';
import 'package:my_portfolio/pages/widgets/header.dart';
import 'package:my_portfolio/pages/widgets/leading_logo.dart';
import 'package:my_portfolio/pages/widgets/social_pages.dart';
import 'package:rive/rive.dart';

import '../utils/app_color.dart';
import '../utils/app_text_style.dart';
import '../utils/dimensions.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openDrawer() {
    _scaffoldKey.currentState?.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final isSmallScreen = size.width < 600;
    final isTabletScreen = size.width < 900;

    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        toolbarHeight: isSmallScreen ? 100 : 65,
        backgroundColor: AppColors.backgroundColor,
        elevation: 0,
        title: isSmallScreen
            ? Container(
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
              )
            : const LeadingLogo(),
        centerTitle: !isSmallScreen,
        leading: (isSmallScreen || isTabletScreen)
            ? IconButton(
                icon: const Icon(Icons.menu),
                onPressed: _openDrawer,
              )
            : null,
        actions:
            (!isSmallScreen && !isTabletScreen) ? [Header(size: size)] : null,
      ),
      drawer: (isSmallScreen || isTabletScreen) ? const DrawerScreen() : null,

      /**
       * Body
       */
      body: Stack(
        children: [
          const Positioned.fill(
            child: IgnorePointer(
              child: RiveAnimation.asset(
                'assets/RiveAssets/cosmos.riv',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: isSmallScreen ? kDefaultPadding : size.width * 0.2,
                vertical: isSmallScreen ? kDefaultPadding : size.height * 0.2,
              ),
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
                        fontSize: isSmallScreen ? 24 : 40,
                      ),
                    ),
                  ),
                  Constants.sizedBox(height: 15),
                  FadeInRight(
                    duration: const Duration(milliseconds: 1400),
                    child: Text(
                      'Ankush Paul',
                      style: AppTextStyle.headLineTextStyle(
                        fontSize: isSmallScreen ? 20 : 24,
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
                                : isTabletScreen
                                    ? 28
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
                                    : isTabletScreen
                                        ? 28
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
            ),
          ),
        ],
      ),
    );
  }
}
