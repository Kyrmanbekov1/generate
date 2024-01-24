import 'package:flutter/material.dart';
import 'package:flutter_application_4/ui/screens/home_screens.dart';
import 'package:flutter_application_4/ui/theme/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
       minTextAdapt: true,
      splitScreenMode: true,

      builder: (context, child) {
        return  MaterialApp(
          theme: ThemeData(
            scaffoldBackgroundColor: AppColors.bgColor,
            appBarTheme: AppBarTheme(
             backgroundColor: AppColors.bgColor,
             elevation: 0, 
            ),
          ),
          home: HomeScreen(),
        );
      },
    );
  }
}