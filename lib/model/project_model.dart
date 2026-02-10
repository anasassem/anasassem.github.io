class ProjectModel {
  final String image;
  final String title;
  final String appleUrl;
  final String googleUrl;
  final String description;

  const ProjectModel({
    required this.image,
    required this.title,
    required this.appleUrl,
    required this.googleUrl,
    required this.description,
  });

  static const List<ProjectModel> projects = [
    ProjectModel(
        description:
            "Discover the freedom of effortless travel with our Aabir app. Seamlessly book rides, explore your city, and arrive at your destination in style. Our user-friendly interface ensures a smooth journey, offering reliability and comfort at your fingertips. Embrace a new era of transportation and let every ride be an experience.",
        image: "assets/aabir.png",
        title: "AABIR-عابر",
        appleUrl:
            "https://apps.apple.com/qa/app/aabir-%D8%B9%D8%A7%D8%A8%D8%B1/id6476094429",
        googleUrl:
            "https://play.google.com/store/apps/details?id=com.aaber.rider&hl=en"),
    ProjectModel(
        image: "assets/aabir.png",
        googleUrl:
            "https://play.google.com/store/apps/details?id=com.aaber.driver&hl=en",
        appleUrl: "https://apps.apple.com/us/app/aabir-captain/id6476094701",
        title: "Aabir Captain - عابر كابتن",
        description:
            "AAbir is an online platform that provides affordable rides everyday, get access to daily comfortable rides and make commuting as easy as a click of a button."),
    ProjectModel(
        image: "assets/eyewater.png",
        googleUrl:
            "https://play.google.com/store/apps/details?id=com.watereye.watereye&hl=af",
        appleUrl:
            "https://apps.apple.com/us/app/%D8%A7%D9%84%D8%B9%D9%8A%D9%86-%D8%A7%D9%84%D8%B3%D8%AD%D8%B1%D9%8A%D8%A9-%D9%84%D9%84%D9%85%D9%8A%D8%A7%D9%87/id6477953615",
        title: "العين للمياه",
        description:
            "Al Ain Water is the main water company in Iraq, distributed throughout Iraq it was 4 application Admin , Driver , User and Store official"),
    ProjectModel(
        image: "assets/story.png",
        googleUrl:
            "https://play.google.com/store/apps/details?id=com.storyLingo.storyLingo",
        title: "ستوريلينجو",
        description:
            "StoryLingo is an Education app to learn English language by reading and listen to a lot of translated stories",
        appleUrl:
            "https://apps.apple.com/us/app/%D8%B3%D8%AA%D9%88%D8%B1%D9%8A%D9%84%D9%8A%D9%86%D8%AC%D9%88-%D8%AA%D8%B9%D9%84%D9%85-%D8%A7%D9%84%D8%A7%D9%86%D8%AC%D9%84%D9%8A%D8%B2%D9%8A%D8%A9/id6751780506"),
    ProjectModel(
        image: "assets/egytour.png",
        googleUrl:
            "https://play.google.com/store/apps/details?id=com.skycrow.egyTour",
        appleUrl: "https://apps.apple.com/sa/app/egy-tour/id6737623064?l=ar",
        title: "Egy Tour",
        description:
            "Safety starts with understanding how developers collect and share your data. Data privacy and security practices may vary based on your use, region, and age. The developer provided this information and may update it over time."),
    ProjectModel(
        image: "assets/zeem.png",
        appleUrl:
            "https://apps.apple.com/eg/app/%D8%B2%D9%8A%D9%85-zeem/id6443638059",
        googleUrl:
            "https://play.google.com/store/apps/details?id=com.zeem.customer&hl=en",
        title: "Zeem - زيم",
        description:
            "Safety starts with understanding how developers collect and share your data. Data privacy and security practices may vary based on your use, region, and age. The developer provided this information and may update it over time."),
    ProjectModel(
        image: "assets/zeemDriver.png",
        appleUrl:
            "https://apps.apple.com/eg/app/%D8%B3%D8%A7%D8%A6%D9%82-%D8%B2%D9%8A%D9%85-zeem-driver/id6443723481",
        googleUrl:
            "https://play.google.com/store/apps/details?id=com.zeem.driver&hl=en",
        title: "سائق زيم - Zeem Driver",
        description:
            "Safety starts with understanding how developers collect and share your data. Data privacy and security practices may vary based on your use, region, and age. The developer provided this information and may update it over time."),
    ProjectModel(
        image: "assets/alhamidia.png",
        appleUrl:
            "https://apps.apple.com/pl/app/%D9%85%D8%AC%D9%85%D8%B9-%D8%A7%D9%84%D8%AD%D9%85%D9%8A%D8%AF%D9%8A%D8%A9-%D8%A7%D9%84%D8%B3%D9%83%D9%86%D9%8A/id6758357146",
        googleUrl:
            "https://play.google.com/store/apps/details?id=com.alhamidiya",
        title: "مجمع الحميدية السكني",
        description:
            "مجمع الحميدية السكني هو مشروع سكني مُصمم بعناية ليقدم تجربة سكن عائلية تنعم بهدوء والخصوصية. يتميّز المجمع بالاستقلالية التامة لكل وحدة سكنية، مما يمنح ساكنيه مساحة أوسع وخصوصية أكبر وشعورًا حقيقيًا بالاستقرار."),
  ];
}
