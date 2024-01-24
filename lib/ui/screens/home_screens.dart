import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/ui/theme/app_colors.dart';
import 'package:flutter_application_4/ui/theme/app_fonts.dart';
import 'package:flutter_application_4/ui/widgets/custom_circle_avatar.dart';
import 'package:flutter_application_4/ui/widgets/custom_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: TextButton(
          onPressed: getRandomUser,
          child: Text(
            'Generate',
            style: AppFonts.s16w500.copyWith(color: AppColors.darkblue),
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const CustomCircleAvatar(),
                SizedBox(height: 66.h),
                CustomTextField(
                  hintText: 'Alex Marshal',
                  labelText: 'name',
                  controller: nameController,
                ),
                SizedBox(height: 24.h),
                CustomTextField(
                  hintText: 'alex marshal',
                  labelText: 'username',
                  controller: usernameController,
                ),
                SizedBox(height: 24.h),
                CustomTextField(
                  hintText: '+996 550 550 330',
                  labelText: 'Phone number',
                  controller: phoneNumberController,
                ),
                SizedBox(height: 24.h),
                CustomTextField(
                  hintText: 'alexmarshal@gmail.com',
                  labelText: 'e-mail',
                  controller: emailController,
                ),
                SizedBox(height: 24.h),
              ],
            ),
            
          ),
        ),
        
      ),
      
    );
  }

  Future<void> getRandomUser() async {
    final Dio dio = Dio();
    try {
      final Response response = await dio.get('https://randomuser.me/api');

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = response.data['results'][0];
        final String name = data['name']['first'];
        final String username = data['login']['username'];
        final String phoneNumber = data['cell'];
        final String email = data['email'];

        nameController.text = name;
        usernameController.text = username;
        phoneNumberController.text = phoneNumber;
        emailController.text = email;

        setState(() {});
      } else {
        print('Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      print('Error fetching data: $e');
    }
  }
}
