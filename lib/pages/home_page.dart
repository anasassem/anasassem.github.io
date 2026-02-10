import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/model/project_model.dart';
import 'package:portfolio/utils/app_colors.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:portfolio/widget/footer.dart';
import 'package:portfolio/widget/nav_bar.dart';
import 'package:portfolio/widget/projects_card.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();

  Future<void> launchWebUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }

  void launchEmail() async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: 'anasasim261@gmail.com',
      query:
          'subject=Hello from Portfolio&body=Hi Anas, I would like to discuss...',
    );
    if (await canLaunchUrl(emailUri)) {
      await launchUrl(emailUri);
    }
  }

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
                  _buildHeroSection(context, isDesktop, isMobile),

                  const SizedBox(height: 100),

                  // About Me
                  _buildAboutMe(context),

                  const SizedBox(height: 100),

                  // Projects
                  _buildProjects(context),

                  const SizedBox(height: 100),

                  // Stats (Experience)
                  _buildStats(context, isMobile),

                  const SizedBox(height: 100),

                  // Contact / Footer
                  _buildContactSection(context, isMobile),
                  const Footer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeroSection(
      BuildContext context, bool isDesktop, bool isMobile) {
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
                  "Anas Asim",
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
                  "Flutter Developer",
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
                  "As a senior Flutter developer, I have a comprehensive understanding of the Flutter framework and Dart language, with extensive experience in building, testing, and deploying high-quality mobile applications.",
                  style: GoogleFonts.poppins(
                    color: AppColors.textGrey,
                    fontSize: isMobile ? 14 : 16,
                    height: 1.6,
                  ),
                ).animate().fadeIn(delay: 600.ms, duration: 600.ms),
                const SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () => launchWebUrl(
                      "https://api.whatsapp.com/send/?phone=201118455252"),
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

  Widget _buildAboutMe(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            "About Me",
            style: GoogleFonts.poppins(
              color: AppColors.textWhite,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          GradientText(
            "Get to know me",
            colors: const [AppColors.primary, AppColors.textWhite],
            style: GoogleFonts.poppins(fontSize: 16),
          ),
          const SizedBox(height: 40),
          Container(
            constraints: const BoxConstraints(maxWidth: 800),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "I excel in state management, widget lifecycle, and seamlessly integrating third-party APIs to enhance app functionality. My proficiency in writing clean, maintainable code entails using Bloc, Cubit, and Provider state management. I also have intermediate English skills and am a native Arabic speaker.",
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

  Widget _buildProjects(BuildContext context) {
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
              childAspectRatio: 1.3, // Adjusted for new card design
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

  Widget _buildStats(BuildContext context, bool isMobile) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Wrap(
        spacing: 50,
        runSpacing: 30,
        alignment: WrapAlignment.center,
        children: [
          _buildStatItem("4+", "YEARS OF\nEXPERIENCE"),
          _buildStatItem("100+", "Projects Completed\nas Freelance"),
        ],
      ),
    );
  }

  Widget _buildStatItem(String number, String label) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          number,
          style: GoogleFonts.poppins(
            color: AppColors.border
                .withOpacity(0.8), // Using border color as dark grey
            fontWeight: FontWeight.bold,
            fontSize: 60,
          ),
        ),
        const SizedBox(width: 10),
        Text(
          label,
          style: GoogleFonts.poppins(
            color: AppColors.border.withOpacity(0.8),
            fontWeight: FontWeight.bold,
            fontSize: 14,
            height: 1.2,
          ),
        ),
      ],
    ).animate().fadeIn().scale();
  }

  Widget _buildContactSection(BuildContext context, bool isMobile) {
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
                    "anasasim261@gmail.com",
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
