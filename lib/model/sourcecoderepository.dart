import 'package:flutter_web_test/model/brand.dart';

class SourceCodeRepository {
  final Brand provider;
  final String url;
  final String name;
  const SourceCodeRepository({
    required this.provider,
    required this.name,
    required this.url,
  });
}
