import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_web_test/model/brand.dart';

class BrandIcon extends StatelessWidget {
  final Brand brand;
  final bool showName;
  final TextStyle? textStyle;
  final double size;
  const BrandIcon({
    super.key,
    required this.brand,
    this.showName = true,
    this.textStyle,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    if (!showName) {
      return SvgPicture.asset(
        brand.resourcePath,
        height: size,
        width: size,
      );
    } else {
      return Column(
        children: [
          SvgPicture.asset(
            brand.resourcePath,
            height: size,
            width: size,
          ),
          const SizedBox(height: 16),
          Text(
            brand.name,
            style: textStyle,
          )
        ],
      );
    }
  }
}
