import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/assets_path.dart';

class BackgroundSetup extends StatelessWidget {
  const BackgroundSetup({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(
          AssetPath.backgroundSvg,
          width: double.infinity,
          height: double.infinity,
        ),
        SafeArea(child: child)
      ],
    );
  }
}
