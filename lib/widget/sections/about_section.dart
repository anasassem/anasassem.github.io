import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/data/portfolio_data.dart';
import 'package:portfolio/utils/app_colors.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            PortfolioData.aboutMeTitle,
            style: GoogleFonts.poppins(
              color: AppColors.textWhite,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          GradientText(
            PortfolioData.aboutMeSubtitle,
            colors: const [AppColors.primary, AppColors.textWhite],
            style: GoogleFonts.poppins(fontSize: 16),
          ),
          const SizedBox(height: 40),
          Container(
            constraints: const BoxConstraints(maxWidth: 800),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              PortfolioData.aboutMeDescription,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                color: AppColors.textGrey,
                fontSize: 16,
                height: 1.6,
              ),
            ),
          ),
        ],
      ).animate().fadeIn(duration: 600.ms).slideY(begin: 0.2),
    );
  }
}
