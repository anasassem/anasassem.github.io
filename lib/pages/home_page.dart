import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_colors.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:portfolio/widget/footer.dart';
import 'package:portfolio/widget/nav_bar.dart';
import 'package:portfolio/widget/sections/about_section.dart';
import 'package:portfolio/widget/sections/contact_section.dart';
import 'package:portfolio/widget/sections/experience_section.dart';
import 'package:portfolio/widget/sections/hero_section.dart';
import 'package:portfolio/widget/sections/projects_section.dart';
import 'package:portfolio/widget/sections/skills_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    bool isDesktop = Responsive.isDesktop(context);
    bool isMobile = Responsive.isMobile(context);

    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        children: [
          const NavBar(),
          Expanded(
            child: SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Hero Section
                  HeroSection(isDesktop: isDesktop, isMobile: isMobile),

                  const SizedBox(height: 100),

                  // About Me
                  const AboutSection(),

                  const SizedBox(height: 100),

                  // Skills
                  const SkillsSection(),

                  const SizedBox(height: 100),

                  // Experience
                  const ExperienceSection(),

                  const SizedBox(height: 100),

                  // Projects
                  const ProjectsSection(),

                  const SizedBox(height: 100),

                  // Contact
                  const ContactSection(),

                  const Footer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
