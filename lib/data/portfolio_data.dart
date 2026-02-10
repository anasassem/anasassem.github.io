import 'package:portfolio/model/experience_model.dart';
import 'package:portfolio/model/skill_model.dart';

class PortfolioData {
  // Personal Info
  static const String name = "Anas Asim";
  static const String title = "Flutter Developer";
  static const String email = "anasasim261@gmail.com";
  static const String phone = "+201118455252";
  static const String whatsappUrl =
      "https://api.whatsapp.com/send/?phone=201118455252";

  // URLs
  static const String facebookUrl =
      "https://www.facebook.com/profile.php?id=100000722082052";
  static const String linkedinUrl =
      "https://www.linkedin.com/in/anas-asim-7114421ba/";
  static const String githubUrl = "https://github.com/anasassem";

  // About Me
  static const String aboutMeTitle = "About Me";
  static const String aboutMeSubtitle = "Get to know me";
  static const String aboutMeDescription =
      "I excel in state management, widget lifecycle, and seamlessly integrating third-party APIs to enhance app functionality. "
      "My proficiency in writing clean, maintainable code entails using Bloc, Cubit, and Provider state management. "
      "I also have intermediate English skills and am a native Arabic speaker. "
      "As a senior Flutter developer, I have a comprehensive understanding of the Flutter framework and Dart language, "
      "with extensive experience in building, testing, and deploying high-quality mobile applications.";

  // Stats
  static const String yearsExperience = "4+";
  static const String projectsCompleted = "100+";

  // Skills (Inferred from generic Flutter profile + existing code)
  static const List<SkillModel> skills = [
    SkillModel(name: "Flutter"),
    SkillModel(name: "Dart"),
    SkillModel(name: "Bloc / Cubit"),
    SkillModel(name: "Provider"),
    SkillModel(name: "API Integration"),
    SkillModel(name: "Firebase"),
    SkillModel(name: "Google Maps"),
    SkillModel(name: "Payment Gateways"),
    SkillModel(name: "Clean Architecture"),
    SkillModel(name: "Git & GitHub"),
  ];

  // Experience (Placeholders - USER TO UPDATE)
  static const List<ExperienceModel> experience = [
    ExperienceModel(
      role: "Senior Flutter Developer",
      company: "Advanced Solutions for transportations service",
      duration: "Nov 2025 – Present",
      description:
          "Worked on Zeem Customer & Driver apps (Uber-like platform with 9+ services). Focused on bug fixing, performance optimization, and delivering a stable production-ready release.",
    ),
    ExperienceModel(
      role: "Senior Flutter Developer",
      company: "RFID Saudi",
      duration: "Aug 2024 – Aug 2025",
      description:
          "• Led development of an appointment booking application, improving user engagement by 30%.\n"
          "• Implemented advanced state management solutions, reducing app load times by 40%.\n"
          "• Collaborated with design and QA teams to ensure seamless UI/UX and high-quality deliverables.",
    ),
    ExperienceModel(
      role: "Senior Flutter Developer",
      company: "SkyCrew",
      duration: "Jan 2024 – Aug 2024",
      description:
          "• Developed and maintained a tourism application, increasing user retention by 25%.\n"
          "• Integrated third-party APIs for real-time updates, enhancing app responsiveness and functionality.\n"
          "• Mentored junior developers on Flutter best practices and conducted code reviews to maintain coding standards.",
    ),
    ExperienceModel(
      role: "Freelance Projects",
      company: "Self-Employed",
      duration: "2021 – Present",
      description:
          "• Designed and deployed multiple Flutter applications with a focus on clean architecture and intuitive UI/UX.\n"
          "• Specializing in building feature-rich, cross-platform mobile applications for diverse clients.",
    ),
  ];
}
