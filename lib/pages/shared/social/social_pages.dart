import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/pages/shared/social/social_button.dart';
import 'package:my_portfolio/utils/app_urls.dart';
import '../../../utils/app_assets.dart';
import '../../../utils/dimensions.dart';

class SocialPages extends StatefulWidget {
  const SocialPages({
    super.key,
  });

  @override
  State<SocialPages> createState() => _SocialPagesState();
}

class _SocialPagesState extends State<SocialPages> {
  @override
  Widget build(BuildContext context) {
    return FadeInUp(
        duration: const Duration(milliseconds: 1800),
        child: Wrap(
          alignment: WrapAlignment.start,
          spacing: kDefaultPadding / 2,
          children: [
            SocialButton(icon: AppAssets.facebook, url: AppUrls.fbUrl),
            SocialButton(icon: AppAssets.instagram, url: AppUrls.instaUrl),
            SocialButton(icon: AppAssets.github, url: AppUrls.githubUrl),
            SocialButton(icon: AppAssets.linkedin, url: AppUrls.linkedinUrl),
            SocialButton(icon: AppAssets.twitter, url: AppUrls.twitterUrl),
          ],
        ));
  }
}
