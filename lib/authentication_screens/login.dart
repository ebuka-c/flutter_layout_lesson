import 'package:flutter/material.dart';
import 'package:new_flutter_project/authentication_screens/forgot_pwd.dart';
import 'package:new_flutter_project/home/home_screen.dart';
import 'package:new_flutter_project/reusable/auth_text_field.dart'
    show AuthTextField;
import 'package:new_flutter_project/utils/colors.dart';
import 'package:new_flutter_project/authentication_screens/sign_up.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  bool obscurePassword = true;

  LoginScreen({super.key});

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
                text: 'Welcome ',
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                  color: AppColors.white,
                  fontSize: 45,
                ),
                children: [
                  TextSpan(
                    text: ' Back',
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

            StatefulBuilder(
              builder: (context, setState) {
                return AuthTextField(
                  hintText: 'Password',
                  prefixIcon: Icons.key,
                  obscure: obscurePassword,
                  suffixIcon: IconButton(
                    icon: Icon(
                      obscurePassword ? Icons.visibility_off : Icons.visibility,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        obscurePassword = !obscurePassword;
                      });
                    },
                  ),
                );
              },
            ),

            SizedBox(height: 8),

            Align(
              alignment: Alignment.bottomRight,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ForgotPwd()),
                  );
                },
                child: const Text(
                  'Forgot password?',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),

            SizedBox(height: 10),

            // Login Button
            SizedBox(
              width: double.infinity,
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (ctx) => HomeScreen()),
                  );
                },
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

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'New User? ',
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CreateAccountPage(),
                      ),
                    );
                  },
                  child: const Text(
                    'Create an account',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
