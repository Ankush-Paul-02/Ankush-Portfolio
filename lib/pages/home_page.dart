import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/pages/widgets/header.dart';
import 'package:my_portfolio/pages/widgets/leading_logo.dart';
import 'package:my_portfolio/pages/widgets/social_button.dart';
import 'package:my_portfolio/utils/app_color.dart';
import 'package:my_portfolio/utils/app_text_style.dart';
import 'package:my_portfolio/utils/dimensions.dart';
import 'package:rive/rive.dart';
import '../utils/app_assets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        title: const LeadingLogo(),
        toolbarHeight: 100,
        backgroundColor: AppColors.backgroundColor,
        elevation: 0,
        actions: [Header(size: size)],
      ),
      body: Stack(
        children: [
          //! Background animated rive image
          const IgnorePointer(
            child: Positioned.fill(
              child: RiveAnimation.asset(
                'assets/RiveAssets/cosmos.riv',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(
                    top: size.height * 0.3,
                    left: size.height * 0.2,
                    right: size.height * 0.2,
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: kDefaultPadding * 2),
                      //! Body
                      Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  FadeInDown(
                                    duration:
                                        const Duration(milliseconds: 1200),
                                    child: Text(
                                      'Hola, It\'s Me',
                                      style: AppTextStyle.monteserratStyle(
                                          color: Colors.white),
                                    ),
                                  ),
                                  Constants.sizedBox(height: 15),
                                  FadeInRight(
                                    duration:
                                        const Duration(milliseconds: 1400),
                                    child: Text(
                                      'Ankush Paul',
                                      style: AppTextStyle.headLineTextStyle(),
                                    ),
                                  ),
                                  Constants.sizedBox(height: 15),
                                  FadeInLeft(
                                    duration:
                                        const Duration(milliseconds: 1400),
                                    child: Row(
                                      children: [
                                        Text(
                                          'And I\'m a ',
                                          style: AppTextStyle.monteserratStyle(
                                              color: Colors.white),
                                        ),
                                        AnimatedTextKit(
                                          animatedTexts: [
                                            TyperAnimatedText(
                                              'Flutter Developer',
                                              textStyle:
                                                  AppTextStyle.monteserratStyle(
                                                color: const Color(0xff6A01FB),
                                              ),
                                            ),
                                          ],
                                          totalRepeatCount: 5,
                                          pause: const Duration(
                                              milliseconds: 1000),
                                          displayFullTextOnTap: true,
                                          stopPauseOnTap: true,
                                        )
                                      ],
                                    ),
                                  ),
                                  Constants.sizedBox(height: 15),
                                  FadeInDown(
                                    duration:
                                        const Duration(milliseconds: 1600),
                                    child: SizedBox(
                                      width: size.width * 0.5,
                                      child: Text(
                                        'I aspire to challenging career in Software Development to ue my learned skills and experience for the best result.',
                                        style: AppTextStyle.normalStyle(),
                                      ),
                                    ),
                                  ),
                                  Constants.sizedBox(height: 22),
                                  FadeInUp(
                                    duration:
                                        const Duration(milliseconds: 1800),
                                    child: Row(
                                      children: [
                                        SocialButton(icon: AppAssets.facebook),
                                        Constants.sizedBox(
                                            width: kDefaultPadding / 2),
                                        SocialButton(icon: AppAssets.instagram),
                                        Constants.sizedBox(
                                            width: kDefaultPadding / 2),
                                        SocialButton(icon: AppAssets.github),
                                        Constants.sizedBox(
                                            width: kDefaultPadding / 2),
                                        SocialButton(icon: AppAssets.linkedin),
                                        Constants.sizedBox(
                                            width: kDefaultPadding / 2),
                                        SocialButton(icon: AppAssets.twitter),
                                      ],
                                    ),
                                  ),
                                  Constants.sizedBox(height: 18),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
