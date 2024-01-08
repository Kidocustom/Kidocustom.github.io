import 'package:advanced_project/Screens/utils/app_layout.dart';
import 'package:advanced_project/Screens/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ColumnLayout extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final String firstText;
  final String secondText;
  const ColumnLayout(
      {super.key,
      required this.firstText,
      required this.secondText,
      required this.alignment});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(
          firstText,
          style: Styles.headLineStyle3,
        ),
        SizedBox(
          height: AppLayout.getHeight(5),
        ),
        Text(secondText, style: Styles.headLineStyle4)
      ],
    );
  }
}
