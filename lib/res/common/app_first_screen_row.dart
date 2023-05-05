import 'package:flutter/material.dart';
import 'package:model_practise/res/constant/app_colors.dart';

class AppFirstScreenRow extends StatelessWidget {
  final String? text;
  final String? image;
  const AppFirstScreenRow({Key? key, this.text, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Image.asset(image!, height: height / 35, width: width / 20),
        SizedBox(width: width / 25),
        Text(
          text!,
          style: TextStyle(
            color: AppColors.blackColor,
            fontSize: height / 60,
            fontFamily: "Open Sans",
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
