import 'package:flutter/material.dart';
import 'package:twitter_clone/contains/constaints.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UIConstaints {
  static AppBar appBar() {
    return AppBar(
      title: SvgPicture.asset(
        AssetsConstants.twitterLogo,
      ),
    );
  }
}
