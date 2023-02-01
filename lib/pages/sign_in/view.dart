import 'package:firebase_chat/common/values/colors.dart';
import 'package:firebase_chat/common/widgets/button.dart';
import 'package:firebase_chat/pages/sign_in/index.dart';
import 'package:firebase_chat/pages/welcomes/controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dots_indicator/dots_indicator.dart';

import '../../common/values/shadows.dart';

class SignInPage extends GetView<SignInController> {
  const SignInPage({Key? key}) : super(key: key);

  Widget _buiidThirdPartyLogin() {
    return Container(
      width: 295.w,
      child: Column(
        children: [
          Text(
            "Sign in with Social network",
            style: TextStyle(
                color: AppColors.primaryText,
                fontSize: 16.sp,
                fontWeight: FontWeight.w400),
            textAlign: TextAlign.center,
          ),
          Padding(padding: EdgeInsets.only(top: 30.h, left: 50.w, right: 50.w),
          child: btnFlatButtonWidget(onPressed: null,
          width: 200.w, height: 55.h),
          )
        ],
      ),
    );
  }

  Widget _buildLogo() {
    return Container(
      width: 110.w,
      margin: EdgeInsets.only(top: 84.h),
      child: Column(
        children: [
          Container(
            width: 76.w,
            height: 76.w,
            margin: EdgeInsets.symmetric(horizontal: 15.w),
            child: Stack(
              children: [
                Positioned(
                    child: Container(
                  height: 76.w,
                  decoration: const BoxDecoration(
                      color: AppColors.primaryBackground,
                      boxShadow: [Shadows.primaryShadow],
                      borderRadius: BorderRadius.all(Radius.circular(35))),
                )),
                Positioned(
                    child: Image.asset(
                  "assets/images/ic_launcher.png",
                  width: 76.w,
                  height: 76.w,
                  fit: BoxFit.cover,
                ))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15.h, bottom: 15.h),
            child: Text(
              "Let's Chat",
              style: TextStyle(
                  color: AppColors.thirdElement,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [_buildLogo(), _buiidThirdPartyLogin()],
      ),
    ));
  }
}
