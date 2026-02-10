import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/data/portfolio_data.dart';
import 'package:portfolio/utils/app_colors.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({Key? key}) : super(key: key);

  void launchEmail() async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: PortfolioData.email,
      query:
          'subject=Hello from Portfolio&body=Hi ${PortfolioData.name}, I would like to discuss...',
    );
    if (await canLaunchUrl(emailUri)) {
      await launchUrl(emailUri);
    }
  }

  @override
  Widget build(BuildContext context) {
    bool isMobile = Responsive.isMobile(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              "Let’s \nWork Together",
              style: GoogleFonts.poppins(
                color: AppColors.textGrey,
                fontSize: isMobile ? 30 : 50,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          InkWell(
            onTap: launchEmail,
            child: Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.border),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset("assets/gmail.png", width: 24),
                  const SizedBox(width: 10),
                  Text(
                    PortfolioData.email,
                    style: GoogleFonts.poppins(color: AppColors.textGrey),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
