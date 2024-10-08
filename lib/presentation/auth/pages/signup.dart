import 'package:flutter/material.dart';
import 'package:spotify_clone/common/widgets/appbar/basic_app_bar.dart';
import 'package:spotify_clone/common/widgets/button/basic_app_button.dart';
import 'package:spotify_clone/presentation/auth/pages/signin.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _signupText(context),
      appBar: BasicAppBar(
        title: Image.asset(
          'assets/vectors/spotify_logo.png',
          height: 100,
          width: 100,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _registerText(),
            const SizedBox(height: 50),
            _fullNameField(context),
            const SizedBox(height: 20),
            _emailField(context),
            const SizedBox(height: 20),
            _passwordField(context),
            const SizedBox(height: 20),
            BasicAppButton(
              onPressed: () {},
              title: 'Create Account',
            ),
          ],
        ),
      ),
    );
  }
}

Widget _registerText() {
  return const Text(
    'Register',
    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    textAlign: TextAlign.center,
  );
}

Widget _fullNameField(BuildContext context) {
  return TextFormField(
      decoration: const InputDecoration(
    hintText: 'Full Name',
  ).applyDefaults(Theme.of(context).inputDecorationTheme));
}

Widget _emailField(BuildContext context) {
  return TextFormField(
      decoration: const InputDecoration(
    hintText: 'Enter Email',
  ).applyDefaults(Theme.of(context).inputDecorationTheme));
}

Widget _passwordField(BuildContext context) {
  return TextFormField(
      decoration: const InputDecoration(
    hintText: 'Password',
  ).applyDefaults(Theme.of(context).inputDecorationTheme));
}

Widget _signupText(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 30),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Do you have an account?',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
        ),
        TextButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => const SignIn(),
              ),
            );
          },
          child: const Text(
            'Sign In',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    ),
  );
}
