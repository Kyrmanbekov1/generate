import 'package:flutter/material.dart';
import 'package:flutter_application_4/ui/theme/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.w,
      height: 150.h,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.gradient,
            AppColors.black
          ]) ,
        shape: BoxShape.circle,
        color: AppColors.black,
      ),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: CircleAvatar(
          radius: 74.r,
          backgroundImage: AssetImage('assets/images/photo1.png'),
        ),
      ),
    );
  }
}