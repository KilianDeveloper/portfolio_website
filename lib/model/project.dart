import 'package:flutter_web_test/model/brand.dart';
import 'package:flutter_web_test/model/platform.dart';
import 'package:flutter_web_test/model/sourcecoderepository.dart';

class Project {
  final List<String> imageResourcePaths;
  final String name;
  final String? iconResourcePath;
  final String description;
  final List<Brand> techStack;
  final List<RuntimePlatform> platforms;
  final List<SourceCodeRepository> sources;

  const Project({
    required this.name,
    required this.description,
    required this.iconResourcePath,
    required this.imageResourcePaths,
    required this.techStack,
    required this.platforms,
    required this.sources,
  });
}
