import 'package:flutter/material.dart';
import 'package:ticket_app/core/widgets/text_style_forth.dart';
import 'package:ticket_app/core/widgets/text_style_third.dart';

class AppColumnTextLayout extends StatelessWidget {
  final String topText;
  final String bottomText;
  final CrossAxisAlignment alignment;
  const AppColumnTextLayout({super.key, required this.topText, required this.bottomText,  this.alignment = CrossAxisAlignment.center});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        TextStyleThird(text: topText),
        const SizedBox(height: 5,),
        TextStyleForth(text: bottomText),
      ],
    );
  }
}
