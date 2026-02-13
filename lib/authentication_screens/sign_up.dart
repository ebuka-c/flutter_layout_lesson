import 'package:flutter/material.dart';
import 'package:new_flutter_project/authentication_screens/login.dart';
import 'package:new_flutter_project/reusable/auth_text_field.dart'
    show AuthTextField;
import 'package:new_flutter_project/utils/colors.dart';

class CreateAccountPage extends StatelessWidget {
  bool obscurePassword = true;

  CreateAccountPage({super.key});

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
                text: 'Create ',
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                  color: AppColors.white,
                  fontSize: 45,
                ),
                children: [
                  TextSpan(
                    text: ' Account',
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
            SizedBox(height: 35),
            AuthTextField(hintText: 'FullName', prefixIcon: Icons.person),

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

            SizedBox(height: 100),

            // Login Button
            SizedBox(
              width: double.infinity,
              height: 50,
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
                "------- or signup with -------",
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ),
            SizedBox(height: 25),

            ColorFiltered(
              colorFilter: const ColorFilter.mode(
                Colors.white,
                BlendMode.srcIn,
              ),
            ),

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
                  'Already have an account? ',
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  child: const Text(
                    'Log in',
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
