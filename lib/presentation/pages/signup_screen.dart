import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:bus_booking/core/theme/custom_colors.dart';
import 'package:bus_booking/custom_router.dart';
import 'package:bus_booking/gen/assets.gen.dart';
import 'package:bus_booking/presentation/widgets/custom_button.dart';
import 'package:bus_booking/presentation/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(
          children: [
            const SizedBox(height: 40),
            Text(
              'Create new account',
              style: context.headlineMedium?.copyWith(
                fontSize: 30,
                color: CustomColors.labelLargerYellow,
              ),
            ),
            const SizedBox(height: 20),
            CustomTextField(
              hintText: 'Your Name',
              icon: Assets.icons.user,
            ),
            CustomTextField(
              hintText: 'Phone Number',
              icon: Assets.icons.phone,
            ),
            CustomTextField(
              hintText: 'E-Mail',
              icon: Assets.icons.mail,
            ),
            CustomTextField(
              hintText: 'Password',
              icon: Assets.icons.lock,
            ),
            const SizedBox(height: 20),
            const CustomButton(text: 'Sign Up'),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Don\'t have an account?',
                    style: context.labelMedium?.copyWith(
                      color: CustomColors.labelMediumBlack,
                      fontWeight: FontWeight.w400,
                    )),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, CustomRouter.signIn);
                  },
                  child: Text('Log In', style: context.labelMedium),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
