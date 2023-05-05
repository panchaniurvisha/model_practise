import 'package:flutter/material.dart';
import 'package:model_practise/model/first_screen_user_model.dart';
import 'package:model_practise/res/common/App_first_screen_row.dart';
import 'package:model_practise/res/common/app_first_screen_second_row.dart';
import 'package:model_practise/res/constant/app_colors.dart';
import 'package:model_practise/res/constant/app_images.dart';
import 'package:model_practise/res/constant/app_string.dart';

import '../../data/api/user_data_first_screen.dart';

class FirstScreenPractise extends StatefulWidget {
  const FirstScreenPractise({Key? key}) : super(key: key);

  @override
  State<FirstScreenPractise> createState() => _FirstScreenPractiseState();
}

class _FirstScreenPractiseState extends State<FirstScreenPractise> {
  @override
  Widget build(BuildContext context) {
    FirstScreenUserModel? userModel = FirstScreenUserModel.fromJson(userData);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(
              left: width / 30, right: width / 30, top: height / 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Icon(Icons.keyboard_backspace_rounded,
                      color: AppColors.blackOneColor),
                  Padding(
                    padding: EdgeInsets.only(left: width / 35),
                    child: Text(
                      AppString.back,
                      style: TextStyle(
                        color: AppColors.blackColor,
                        fontSize: height / 45,
                        fontFamily: "Open Sans",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height / 140,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            AppString.date,
                            style: TextStyle(
                              color: AppColors.grayColorOne,
                              fontSize: height / 60,
                              fontFamily: "Open Sans",
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            width: width / 14,
                          ),
                          Text(
                            AppString.nights,
                            style: TextStyle(
                              color: AppColors.grayColorOne,
                              fontSize: height / 60,
                              fontFamily: "Open Sans",
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          bottom: height / 30,
                        ),
                        child: Text(
                          AppString.name,
                          style: TextStyle(
                            color: AppColors.blackColor,
                            fontSize: height / 45,
                            fontFamily: "Open Sans",
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      debugPrint("pressed");
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.blueColor,
                    ),
                    child: const Text(AppString.dateUpdate,
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontWeight: FontWeight.w600,
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: height / 1.265,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemCount: userModel.roomList!.length,
                  itemBuilder: (context, index) => Container(
                    margin: EdgeInsets.only(bottom: height / 10),
                    height: height / 1.297,
                    width: width / 30,
                    decoration: const BoxDecoration(
                        color: AppColors.whiteColor,
                        boxShadow: [
                          BoxShadow(
                              color: AppColors.blackTwoColor,
                              blurRadius: 46,
                              blurStyle: BlurStyle.outer,
                              offset: Offset(-2, 4))
                        ]),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: width / 30,
                          right: width / 6,
                          bottom: height / 20,
                          top: height / 50),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            "${userModel.roomList![index].image}",
                          ),
                          Text(
                            "${userModel.roomList![index].hotelName}",
                            style: TextStyle(
                              height: 3,
                              color: AppColors.blackColor,
                              fontSize: height / 30,
                              fontFamily: "Open Sans",
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          AppFirstScreenRow(
                            image: AppImages.bedIcon,
                            text: "${userModel.roomList![index].bedQuantity}",
                          ),
                          AppFirstScreenRow(
                            image: AppImages.profileIcon,
                            text:
                                "${AppString.occupancy}${userModel.roomList![index].occupancy}",
                          ),
                          AppFirstScreenRow(
                            image: AppImages.rectangularIcon,
                            text:
                                "${userModel.roomList![index].fit}${AppString.fit}",
                          ),
                          AppFirstScreenRow(
                            image: AppImages.cupIcon,
                            text: "${userModel.roomList![index].kitchen}",
                          ),
                          SizedBox(
                            height: height / 40,
                          ),
                          const AppFirstScreenSecondRow(
                              text: AppString.details),
                          const AppFirstScreenSecondRow(
                              text: AppString.information),
                          Text(
                            "${userModel.roomList![index].nightsNumber}${AppString.night}${userModel.roomList![index].adultsNumber}${AppString.adults}",
                            style: TextStyle(
                              height: height / 320,
                              color: AppColors.blackColor,
                              fontSize: height / 50,
                              fontFamily: "Open Sans",
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              debugPrint("pressed");
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.blueColor,
                            ),
                            child: const Text(AppString.viewData,
                                style: TextStyle(
                                  fontFamily: "Open Sans",
                                  fontWeight: FontWeight.w600,
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
