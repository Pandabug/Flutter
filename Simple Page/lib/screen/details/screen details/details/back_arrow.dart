import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../costants.dart';

class BackArrowIcon extends StatelessWidget {
  const BackArrowIcon({
    Key key,
    @required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: IconButton(
        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        icon: SvgPicture.asset('assets/icons/back_arrow.svg'),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
