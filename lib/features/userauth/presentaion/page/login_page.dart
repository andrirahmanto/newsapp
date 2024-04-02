import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sign_in_button/sign_in_button.dart';

import '../../../../app/theme.dart';
import '../controller/login_controller.dart';

class LoginPage extends StatelessWidget {
  final LoginController loginController = Get.find();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'News App',
                style: blackTextStyle.copyWith(
                  fontSize: 21,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 20),
              SignInButton(
                Buttons.google,
                onPressed: () {
                  Get.toNamed('/news');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
