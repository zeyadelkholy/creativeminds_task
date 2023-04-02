import 'package:flutter/cupertino.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    Key? key,
    required this.text,
    this.fontfamily,
    required this.fointsize,
    this.textAlign,
  }) : super(key: key);

  final String text;
  final String? fontfamily;
  final double fointsize;
  final String? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.start,
      style: TextStyle(
        fontFamily: 'AlmaraiRegular',
        fontSize: fointsize,
      ),
    );
  }
}
