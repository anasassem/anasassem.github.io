import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:portfolio/model/project_model.dart';
import 'package:portfolio/utils/app_colors.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:portfolio/widget/projects_card.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDesktop = Responsive.isDesktop(context);
    int crossAxisCount = isDesktop ? 3 : (Responsive.isTablet(context) ? 2 : 1);

    return Column(
      children: [
        Text(
          "My Recent Work",
          style: GoogleFonts.poppins(
            color: AppColors.textWhite,
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 50),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              childAspectRatio: 1.3,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
            ),
            itemCount: ProjectModel.projects.length,
            itemBuilder: (context, index) {
              final project = ProjectModel.projects[index];
              return CategoryCard(
                image: project.image,
                title: project.title,
                appleUrl: project.appleUrl,
                googleUrl: project.googleUrl,
                description: project.description,
              ).animate().fadeIn(delay: (index * 100).ms).slideY(begin: 0.1);
            },
          ),
        ),
      ],
    );
  }
}
