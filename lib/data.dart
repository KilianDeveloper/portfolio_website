import 'package:flutter_web_test/model/brand.dart';
import 'package:flutter_web_test/model/brandcollection.dart';
import 'package:flutter_web_test/model/platform.dart';
import 'package:flutter_web_test/model/project.dart';

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
        "Manage your personal training-plan and track your personal records.",
    imageResourcePaths: [
      "assets/trainit/1_calendar.png",
      "assets/trainit/2_account.png",
      "assets/trainit/3_training_preview.png",
      "assets/trainit/4_statistics.png",
      "assets/trainit/5_edit_training_plan.png",
      "assets/trainit/6_dark_mode.png",
    ],
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
  )
];
