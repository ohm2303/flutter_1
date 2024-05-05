import 'package:flutter/material.dart';

class TextTitle extends StatelessWidget {
  final String title;
  final Color? color;

  const TextTitle({Key? key, required this.title, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Text(
      title,
      style: TextStyle(
        color: color ?? Colors.red,
        fontSize: 24,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
