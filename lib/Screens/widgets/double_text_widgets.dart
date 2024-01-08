import 'package:advanced_project/Screens/utils/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppDoubleTextWidgets extends StatelessWidget {
  final String BigText;
  final String smallText;
  const AppDoubleTextWidgets(
      {Key? key, required this.BigText, required this.smallText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          BigText,
          style: Styles.headLineStyle2,
        ),
        InkWell(
          onTap: () {
            print("You are tapped");
          },
          child: Text(
            smallText,
            style: Styles.textStyle.copyWith(color: Styles.primaryColor),
          ),
        )
      ],
    );
  }
}
