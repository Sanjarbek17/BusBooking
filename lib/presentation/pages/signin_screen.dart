import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:bus_booking/core/theme/custom_colors.dart';
import 'package:bus_booking/custom_router.dart';
import 'package:bus_booking/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Log In', style: context.headlineMedium),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: context.labelLarge,
                ),
              ),
              const SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: context.labelLarge,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text('Forget', style: context.labelMedium),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const CustomButton(
                text: 'Sign In',
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don\'t have an account?', style: context.labelMedium?.copyWith(color: CustomColors.labelMediumBlack, fontWeight: FontWeight.w300)),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, CustomRouter.signUp);
                    },
                    child: Text('Sign Up', style: context.labelMedium),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
