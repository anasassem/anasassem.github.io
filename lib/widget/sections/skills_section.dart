import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/data/portfolio_data.dart';
import 'package:portfolio/utils/app_colors.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Text(
            "My Skills",
            style: GoogleFonts.poppins(
              color: AppColors.textWhite,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 50),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            alignment: WrapAlignment.center,
            children: PortfolioData.skills.map((skill) {
              return Chip(
                backgroundColor: AppColors.background,
                side: const BorderSide(color: AppColors.primary),
                labelPadding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                label: Text(
                  skill.name,
                  style: GoogleFonts.poppins(color: AppColors.textWhite),
                ),
                elevation: 5,
                shadowColor: AppColors.primary.withOpacity(0.3),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
