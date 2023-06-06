import 'package:flutter/material.dart';
import 'package:my_portfolio/pages/widgets/drawer_screen.dart';
import 'package:my_portfolio/pages/widgets/header.dart';
import 'package:my_portfolio/pages/widgets/leading_logo.dart';
import 'package:my_portfolio/pages/widgets/whole_intro.dart';
import 'package:rive/rive.dart';
import '../utils/app_color.dart';
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
        toolbarHeight: isSmallScreen ? 120 : 65,
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
                horizontal: isSmallScreen ? kDefaultPadding : size.width * 0.08,
                vertical: isSmallScreen ? kDefaultPadding : size.height * 0.08,
              ),
              child: Column(
                children: [
                  if (isSmallScreen) // Show image at the top for small screens, tablets, and web
                    SizedBox(
                      height: size.height * 0.4,
                      child: Image.asset(
                        'assets/images/profile.png',
                        fit: BoxFit.contain,
                      ),
                    ),
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
          )
        ],
      ),
    );
  }
}
