import 'package:flutter/material.dart';
import 'package:spotify_clone/common/widgets/appbar/basic_app_bar.dart';
import 'package:spotify_clone/common/widgets/button/basic_app_button.dart';
import 'package:spotify_clone/presentation/auth/pages/signup.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _signInText(context),
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
            _emailField(context),
            const SizedBox(height: 20),
            _passwordField(context),
            const SizedBox(height: 20),
            BasicAppButton(
              onPressed: () {},
              title: 'Sign In',
            ),
          ],
        ),
      ),
    );
  }
}

Widget _registerText() {
  return const Text(
    'Sign In',
    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    textAlign: TextAlign.center,
  );
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

Widget _signInText(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 30),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Not a Member ?',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
        TextButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => const SignUp(),
              ),
            );
          },
          child: const Text(
            'Register Now',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    ),
  );
}
