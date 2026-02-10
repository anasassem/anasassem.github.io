import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialButton extends StatelessWidget {
  final String iconPath;
  final String url;
  final double size;

  const SocialButton({
    Key? key,
    required this.iconPath,
    required this.url,
    this.size = 30,
  }) : super(key: key);

  Future<void> _launchUrl() async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _launchUrl,
      child: Image.asset(
        iconPath,
        width: size,
        height: size,
      ),
    );
  }
}
