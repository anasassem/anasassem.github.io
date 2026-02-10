import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_colors.dart';
import 'package:portfolio/widget/social_button.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.of(context).size.width < 800;

    return Column(
      children: [
        const Divider(color: AppColors.border),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "© 2024 Anas Asim. All rights reserved.",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: isMobile ? 12 : 14,
                ),
              ),
              Row(
                children: const [
                  SocialButton(
                    iconPath: "assets/facebook.png",
                    url:
                        "https://www.facebook.com/profile.php?id=100000722082052",
                  ),
                  SizedBox(width: 15),
                  SocialButton(
                    iconPath: "assets/linkedin.png",
                    url: "https://www.linkedin.com/in/anas-asim-7114421ba/",
                  ),
                  SizedBox(width: 15),
                  SocialButton(
                    iconPath: "assets/github.png",
                    url: "https://github.com/anasassem",
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
