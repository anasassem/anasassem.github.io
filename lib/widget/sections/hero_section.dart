import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/data/portfolio_data.dart';
import 'package:portfolio/utils/app_colors.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:url_launcher/url_launcher.dart';

class HeroSection extends StatelessWidget {
  final bool isDesktop;
  final bool isMobile;

  const HeroSection({
    Key? key,
    required this.isDesktop,
    required this.isMobile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: isDesktop ? 100.0 : 20.0,
        vertical: 50.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello, I am",
                  style: GoogleFonts.poppins(
                    color: AppColors.textWhite,
                    fontSize: isMobile ? 24 : 30,
                    fontWeight: FontWeight.w500,
                  ),
                ).animate().fadeIn(duration: 600.ms).slideX(begin: -0.2),
                const SizedBox(height: 10),
                Text(
                  PortfolioData.name,
                  style: GoogleFonts.poppins(
                    color: AppColors.textWhite,
                    fontSize: isMobile ? 40 : 70,
                    fontWeight: FontWeight.bold,
                    height: 1.1,
                  ),
                )
                    .animate()
                    .fadeIn(delay: 200.ms, duration: 600.ms)
                    .slideX(begin: -0.2),
                const SizedBox(height: 10),
                GradientText(
                  PortfolioData.title,
                  colors: const [AppColors.primary, AppColors.textGrey],
                  style: GoogleFonts.poppins(
                    fontSize: isMobile ? 28 : 40,
                    fontWeight: FontWeight.bold,
                  ),
                )
                    .animate()
                    .fadeIn(delay: 400.ms, duration: 600.ms)
                    .slideX(begin: -0.2),
                const SizedBox(height: 30),
                Text(
                  PortfolioData.aboutMeDescription,
                  // Using description here for hero intro as well, or we could add a short bio to PortfolioData
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.poppins(
                    color: AppColors.textGrey,
                    fontSize: isMobile ? 14 : 16,
                    height: 1.6,
                  ),
                ).animate().fadeIn(delay: 600.ms, duration: 600.ms),
                const SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () async {
                    if (!await launchUrl(
                        Uri.parse(PortfolioData.whatsappUrl))) {
                      throw Exception('Could not launch WhatsApp');
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    side: const BorderSide(color: AppColors.primary),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 20),
                  ),
                  child: Text(
                    "WhatsApp Call Me",
                    style: GoogleFonts.poppins(color: Colors.white),
                  ),
                ).animate().fadeIn(delay: 800.ms, duration: 600.ms).scale(),
              ],
            ),
          ),
          if (!isMobile) ...[
            const SizedBox(width: 50),
            Expanded(
              flex: 1,
              child: Image.asset(
                "assets/photo.png",
                fit: BoxFit.contain,
              ).animate().fadeIn(duration: 800.ms).scale(),
            ),
          ],
        ],
      ),
    );
  }
}
