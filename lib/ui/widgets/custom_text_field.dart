import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_4/ui/theme/app_colors.dart';
import 'package:flutter_application_4/ui/theme/app_fonts.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.labelText,
    required this.controller,
    
  });
 
 final String labelText;
 final String hintText;
 final TextEditingController? controller;
 

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: AppFonts.s12w400.copyWith(
          color: AppColors.labelcolor
        ),
        hintText: hintText,
        hintStyle: AppFonts.s16w400.copyWith(
          color: AppColors.black
        ),
        
        fillColor: AppColors.white,
        filled: true,
        border: OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.black
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(4),
            topRight: Radius.circular(4),
            bottomLeft: Radius.circular(0),
            bottomRight: Radius.circular(0),
          ),
        ),
      ),
    );
  }
}

