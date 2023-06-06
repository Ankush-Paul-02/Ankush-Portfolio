import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../utils/app_color.dart';
import '../../utils/dimensions.dart';

class SocialButton extends StatefulWidget {
  const SocialButton({
    super.key,
    required this.icon,
    required this.url,
  });
  final String icon;
  final String url;

  @override
  State<SocialButton> createState() => _SocialButtonState();
}

class _SocialButtonState extends State<SocialButton> {
  void _onTap() async {
    final Uri url = Uri.parse(widget.url); //! Convert the String URL to Uri
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch ${widget.url}';
    }
  }

  @override
  Widget build(BuildContext context) {
    return AvatarGlow(
      endRadius: kDefaultPadding * 2,
      showTwoGlows: true,
      glowColor: AppColors.glowColor,
      duration: const Duration(milliseconds: 2000),
      child: Material(
        elevation: 8,
        shape: const CircleBorder(),
        child: CircleAvatar(
          maxRadius: 24,
          backgroundColor: AppColors.glowColor,
          child: GestureDetector(
            onTap: _onTap,
            child: CircleAvatar(
              maxRadius: 22,
              backgroundColor: AppColors.backgroundColor,
              child: Image.asset(
                widget.icon,
                color: AppColors.glowColor,
                width: 28,
                height: 28,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
