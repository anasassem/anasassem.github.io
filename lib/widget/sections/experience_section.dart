import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/data/portfolio_data.dart';
import 'package:portfolio/utils/app_colors.dart';
import 'package:portfolio/utils/responsive.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDesktop = Responsive.isDesktop(context);
    bool isMobile = Responsive.isMobile(context);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: isDesktop ? 100.0 : 20.0),
      child: Column(
        children: [
          Text(
            "Experience",
            style: GoogleFonts.poppins(
              color: AppColors.textWhite,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 50),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: PortfolioData.experience.length,
            separatorBuilder: (c, i) => const SizedBox(height: 30),
            itemBuilder: (context, index) {
              final exp = PortfolioData.experience[index];
              return Container(
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: AppColors.background,
                  border: Border.all(color: AppColors.border),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            exp.role,
                            style: GoogleFonts.poppins(
                              color: AppColors.primary,
                              fontSize: isMobile ? 18 : 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        if (!isMobile)
                          Text(
                            exp.duration,
                            style: GoogleFonts.poppins(
                              color: AppColors.textGrey,
                              fontSize: 14,
                            ),
                          ),
                      ],
                    ),
                    if (isMobile) ...[
                      const SizedBox(height: 5),
                      Text(
                        exp.duration,
                        style: GoogleFonts.poppins(
                          color: AppColors.textGrey,
                          fontSize: 12,
                        ),
                      ),
                    ],
                    const SizedBox(height: 10),
                    Text(
                      exp.company,
                      style: GoogleFonts.poppins(
                        color: AppColors.textWhite,
                        fontSize: isMobile ? 16 : 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      exp.description,
                      style: GoogleFonts.poppins(
                        color: AppColors.textGrey,
                        fontSize: isMobile ? 14 : 16,
                        height: 1.6,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
