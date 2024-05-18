import 'package:flutter_web_test/model/brand.dart';
import 'package:flutter_web_test/model/platform.dart';

class Project {
  final List<String> imageResourcePaths;
  final String name;
  final String? iconResourcePath;
  final String description;
  final List<Brand> techStack;
  final List<RuntimePlatform> platforms;

  const Project({
    required this.name,
    required this.description,
    required this.iconResourcePath,
    required this.imageResourcePaths,
    required this.techStack,
    required this.platforms,
  });
}
