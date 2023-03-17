import 'package:flutter/material.dart';
import 'package:twitter_clone/common/rounded_small_button.dart';
import 'package:twitter_clone/contains/ui_constants.dart';
import 'package:twitter_clone/features/auth/widgets/auth_feild.dart';
import 'package:twitter_clone/theme/theme.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final appbar = UIConstaints.appBar();
  final emailController = TextEditingController();
  final passController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              children: [
                //TextFeild 1..........
                AuthFeild(
                  controller: emailController,
                  hintText: "Email",
                ),
                const SizedBox(
                  height: 25,
                ),
                //TextFeild 2..........
                AuthFeild(
                  controller: passController,
                  hintText: "Password",
                ),
                const SizedBox(
                  height: 40,
                ),
                //Buttooon.........
                RoundedSmallButton(
                  onTap: () {},
                  label: "Done",
                ),

                //TextSpan.......
              ],
            ),
          ),
        ),
      ),
    );
  }
}
