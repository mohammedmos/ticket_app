import 'package:flutter/material.dart';
import 'package:ticket_app/core/res/styles/app_styles.dart';

class TextStyleForth extends StatelessWidget {
  final String text;
  final TextAlign align;
  const TextStyleForth({super.key, required this.text,  this.align=TextAlign.start});

  @override
  Widget build(BuildContext context) {
    return   Text(text,textAlign: align,style: AppStyles.headlineStyle4.copyWith(color: Colors.white));
  }
}
