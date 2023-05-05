import 'package:flutter/material.dart';
import 'package:model_practise/res/constant/app_colors.dart';

class AppFirstScreenSecondRow extends StatelessWidget {
  final String? text;
  const AppFirstScreenSecondRow({Key? key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Text(
          text!,
          style: TextStyle(
            color: AppColors.grayColor,
            fontSize: height / 60,
            fontFamily: "Open Sans",
            fontWeight: FontWeight.w400,
          ),
        ),
        Icon(
          Icons.navigate_next_rounded,
          color: AppColors.grayColor,
          size: height / 50,
        ),
      ],
    );
  }
}
