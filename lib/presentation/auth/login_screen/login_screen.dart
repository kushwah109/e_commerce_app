import 'package:e_commerce_app/core/route/app_routes.dart';
import 'package:e_commerce_app/presentation/auth/login_screen/controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/common_custom/widget/custom_app_button.dart';
import '../../../core/common_custom/widget/custom_textfield.dart';

class LoginScreen extends GetView<loginController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// APP TITLE
                  const Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  Text(
                    "Welcome back! Please enter your details",
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 14,
                    ),
                  ),

                  const SizedBox(height: 40),

                  /// USERNAME FIELD
                  AppTextField(
                    controller: controller.usernameController,
                    hint: "Username",
                    icon: Icons.person_outline,
                  ),

                  const SizedBox(height: 20),

                  /// PASSWORD FIELD
                  AppTextField(
                    controller: controller.passwordController,
                    hint: "Password",
                    icon: Icons.lock_outline,
                    obscure: true,
                  ),

                  const SizedBox(height: 35),

                  /// LOGIN BUTTON
                  Obx(() => SizedBox(
                        width: double.infinity,
                        height: 55,
                        child: AppButton(
                          text: 'Login',
                          onTap: controller.loginService,
                        ),
                      )),

                  const SizedBox(height: 25),

                  /// REGISTER TEXT
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?",
                          style: TextStyle(color: Colors.grey.shade600)),
                      TextButton(
                        onPressed: () {
                          // Get.toNamed(AppRoutes.signup);
                        },
                        child: const Text("Register"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
