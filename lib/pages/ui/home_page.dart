import 'dart:math';
import 'package:flutter/material.dart';
import 'package:my_portfolio/pages/shared/body/body_screen.dart';
import 'package:my_portfolio/pages/shared/drawer/drawer_screen.dart';
import 'package:my_portfolio/pages/shared/appbar/header.dart';
import 'package:my_portfolio/pages/shared/appbar/leading_logo.dart';
import 'package:my_portfolio/pages/shared/drawer/menu_button.dart';
import 'package:my_portfolio/utils/rive_utils.dart';
import 'package:rive/rive.dart';
import '../../models/rive_assets.dart';
import '../../utils/app_color.dart';
import '../../utils/dimensions.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  RiveAsset selectedMenu = drawerNav.first;
  late SMIBool isSideBarClosed;
  bool isSideMenuClosed = true;

  late AnimationController _animationController;
  late Animation<double> animation;
  late Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 200))
      ..addListener(() {
        setState(() {});
      });

    animation = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
        parent: _animationController, curve: Curves.fastOutSlowIn));

    scaleAnimation = Tween<double>(begin: 1, end: 0.8).animate(CurvedAnimation(
        parent: _animationController, curve: Curves.fastOutSlowIn));
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final isSmallScreen = size.width < 600;
    final isTabletScreen = size.width < 900;

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        toolbarHeight: isSmallScreen ? 120 : 65,
        backgroundColor: AppColors.backgroundColor,
        elevation: 0,
        title: isSmallScreen
            ? isSideMenuClosed
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
                : null
            : isSideMenuClosed && !isSmallScreen
                ? const LeadingLogo()
                : null,
        centerTitle: !isSmallScreen,
        leading: (isSmallScreen || isTabletScreen)
            ? Padding(
                padding: EdgeInsets.only(
                    top: isSmallScreen ? 38 : 10, left: kDefaultPadding),
                child: Stack(
                  children: [
                    MenuButton(
                      press: () {
                        isSideBarClosed.value = !isSideBarClosed.value;
                        if (isSideMenuClosed) {
                          _animationController.forward();
                        } else {
                          _animationController.reverse();
                        }
                        setState(() {
                          isSideMenuClosed = isSideBarClosed.value;
                        });
                      },
                      riverOnInit: (artboard) {
                        StateMachineController controller =
                            RiveUtils.getRiveController(artboard,
                                stateMachineName: "State Machine");
                        isSideBarClosed =
                            controller.findSMI("isOpen") as SMIBool;
                        isSideBarClosed.value = true;
                      },
                    ),
                  ],
                ),
              )
            : null,
        actions:
            (!isSmallScreen && !isTabletScreen) ? [Header(size: size)] : null,
      ),

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
          if (isSmallScreen || isTabletScreen)
            if (isSideMenuClosed == false)
              AnimatedPositioned(
                curve: Curves.fastOutSlowIn,
                duration: const Duration(milliseconds: 200),
                left: isSideMenuClosed ? -288 : 0,
                height: size.height,
                width: 288,
                child: const DrawerScreen(),
              ),
          if (isSmallScreen || isTabletScreen)
            Transform(
              alignment: Alignment.center,
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.001)
                ..rotateY(animation.value - 30 * animation.value * pi / 180),
              child: Transform.translate(
                offset: Offset(animation.value * 265, 0),
                child: Transform.scale(
                  scale: scaleAnimation.value,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(24)),
                    child: BodyScreen(
                        isSmallScreen: isSmallScreen,
                        size: size,
                        isTabletScreen: isTabletScreen),
                  ),
                ),
              ),
            )
          else
            BodyScreen(
                isSmallScreen: isSmallScreen,
                size: size,
                isTabletScreen: isTabletScreen),
        ],
      ),
    );
  }
}
