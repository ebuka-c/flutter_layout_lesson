import 'package:flutter/material.dart';
import 'package:new_flutter_project/reusable/auth_text_field.dart'
    show AuthTextField;
import 'package:new_flutter_project/utils/colors.dart';
import 'package:new_flutter_project/authentication_screens/sign_up.dart';

// ignore: must_be_immutable
class ForgotPwd extends StatelessWidget {
  bool obscurePassword = true;

  ForgotPwd({super.key});

  IconButton _socialButton(
    IconData icon,
    VoidCallback onPressed, {
    double iconSize = 40.0,
  }) {
    return IconButton(
      icon: Icon(icon, size: iconSize, color: Colors.white),
      onPressed: onPressed,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 65),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                text: 'Forgot ',
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                  color: AppColors.white,
                  fontSize: 45,
                ),
                children: [
                  TextSpan(
                    text: ' Password',
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      color: AppColors.hexf7c011,
                      fontSize: 45,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 2),
            Text(
              "Let's continue your journey",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(height: 15),
            AuthTextField(hintText: 'Email', prefixIcon: Icons.email),

            SizedBox(height: 15),

            SizedBox(height: 30),

            // Login Button
            SizedBox(
              width: double.infinity,
              height: 40,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: Colors.amber,
                ),
                child: const Text(
                  'Continue',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
            ),

            SizedBox(height: 40),

            Align(
              alignment: AlignmentGeometry.bottomCenter,
              child: Text(
                "---------- or login with ----------",
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ),
            SizedBox(height: 25),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _socialButton(Icons.g_mobiledata, () {}, iconSize: 30),
                SizedBox(width: 20),
                _socialButton(Icons.facebook, () {}),
                SizedBox(width: 20),
                _socialButton(Icons.apple, () {}),
              ],
            ),
            Spacer(),

            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'Go back',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
