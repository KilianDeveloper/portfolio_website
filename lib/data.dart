import 'package:flutter_web_test/model/brand.dart';
import 'package:flutter_web_test/model/brandcollection.dart';
import 'package:flutter_web_test/model/platform.dart';
import 'package:flutter_web_test/model/project.dart';
import 'package:flutter_web_test/model/sourcecoderepository.dart';

const List<BrandCollection> myBrandCollections = [
  BrandCollection(name: "Mobile/Web-Development", collection: [Brand.flutter]),
  BrandCollection(name: "Backend-Development", collection: [
    Brand.spring,
    Brand.nodejs,
  ]),
  BrandCollection(name: "Deployment", collection: [
    Brand.git,
    Brand.docker,
    Brand.firebase,
  ]),
  BrandCollection(name: "Design/Prototyping", collection: [
    Brand.figma,
  ])
];

const List<Brand> myFindMeBrands = [
  Brand.linkedin,
  Brand.github,
];

const List<Project> myProjects = [
  Project(
      name: "trainIt: Workout Planner",
      description:
          "A mobile application to track your own progress. You can plan your entire workout routine through the week and save all necessary information in your training-plan. You can also track personal bests as your fastest time in 100m running, set your own goals and measure your body values over the time. I created this app entirely by myself from scratch. By far my most favorite project.",
      imageResourcePaths: [
        "assets/trainit/1_calendar.png",
        "assets/trainit/2_account.png",
        "assets/trainit/3_training_preview.png",
        "assets/trainit/4_statistics.png",
        "assets/trainit/5_edit_training_plan.png",
        "assets/trainit/6_dark_mode.png",
      ],
      iconResourcePath: "assets/trainit/icon.png",
      techStack: [
        Brand.flutter,
        Brand.nodejs,
        Brand.docker,
        Brand.figma,
        Brand.firebase,
        Brand.git,
      ],
      platforms: [
        RuntimePlatform.iOS,
        RuntimePlatform.android,
      ],
      sources: [
        SourceCodeRepository(
          provider: Brand.github,
          name: "Frontend",
          url: "https://github.com/KilianDeveloper/trainit-frontend",
        ),
        SourceCodeRepository(
          provider: Brand.github,
          name: "Backend",
          url: "https://github.com/KilianDeveloper/trainit-backend",
        )
      ])
];
