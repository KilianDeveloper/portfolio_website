import 'package:flutter/material.dart';
import 'package:flutter_web_test/logic/websitenavigator.dart';
import 'package:flutter_web_test/model/sourcecoderepository.dart';
import 'package:flutter_web_test/widget/brandicon.dart';

class LinkButton extends StatelessWidget {
  final SourceCodeRepository repository;
  const LinkButton({super.key, required this.repository});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {
        WebsiteNavigator.getWebsiteNavigatorFactory()
            .navigateWebsite(repository.url);
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          BrandIcon(
            brand: repository.provider,
            size: 40,
            showName: false,
          ),
          const SizedBox(width: 12),
          Text(repository.name),
          const SizedBox(width: 12),
        ],
      ),
    );
  }
}
