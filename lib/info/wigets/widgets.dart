import 'package:flutter/material.dart';

import '../../core/colors/colors.dart';

class BodyText extends StatelessWidget {
  final String text;

   BodyText({
    Key? key,required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Text(text);
  }
}

class HeadText extends StatelessWidget {
  final String text;
   HeadText({
    Key? key,required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Text(
      text,
      style: TextStyle(color: kGreyColor),
    );
  }
}
