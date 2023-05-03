import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BackgorundCustom extends StatelessWidget {
  const BackgorundCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(fit: BoxFit.contain, 'assets/login1.svg');
  }

}
