import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/app_color.dart';
import 'package:my_portfolio/utils/dimensions.dart';
import 'package:rive/rive.dart';
import '../../../models/rive_assets.dart';
import '../../../utils/rive_utils.dart';
import 'nav_menu_tile.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({
    super.key,
  });

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  RiveAsset selectedMenu = drawerNav.first;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.backgroundColor,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
            child: Column(
              children: [
                Container(
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
                ),
                const SizedBox(
                  height: kDefaultPadding,
                ),
                const AutoSizeText(
                  'Ankush Paul',
                  minFontSize: 16,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const AutoSizeText(
                  'Flutter Developer',
                  minFontSize: 16,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: AppColors.glowColor,
            thickness: 0.09,
          ),
          const SizedBox(height: kDefaultPadding * 2),
          ...drawerNav.map(
            (menu) => NavMenuTile(
              menu: menu,
              riveOnInit: (artboard) {
                StateMachineController controller = RiveUtils.getRiveController(
                    artboard,
                    stateMachineName: menu.stateMachineName);
                menu.input = controller.findSMI("active") as SMIBool;
              },
              press: () {
                menu.input!.change(true);
                Future.delayed(const Duration(seconds: 1), () {
                  menu.input!.change(false);
                });
                setState(() {
                  selectedMenu = menu;
                });
              },
              isActive: selectedMenu == menu,
            ),
          ),
        ],
      ),
    );
  }
}
