import 'package:flutter/material.dart';
import 'package:twitter_clone/contains/constaints.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../theme/pallate.dart';

class UIConstaints {
  static AppBar appBar() {
    return AppBar(
      title: SvgPicture.asset(
        AssetsConstants.twitterLogo,
        color: Pallete.blueColor,
        height: 30,
      ),
      centerTitle: true,
    );
  }
}
