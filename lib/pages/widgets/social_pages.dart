import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/pages/widgets/social_button.dart';
import '../../utils/app_assets.dart';
import '../../utils/dimensions.dart';

class SocialPages extends StatelessWidget {
  const SocialPages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
        duration: const Duration(milliseconds: 1800),
        child: Wrap(
          alignment: WrapAlignment.start,
          spacing: kDefaultPadding / 2,
          children: [
            SocialButton(icon: AppAssets.facebook),
            SocialButton(icon: AppAssets.instagram),
            SocialButton(icon: AppAssets.github),
            SocialButton(icon: AppAssets.linkedin),
            SocialButton(icon: AppAssets.twitter),
          ],
        ));
  }
}
