import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_clone/core/config/assets/app_images.dart';
import 'package:spotify_clone/core/config/theme/app_colors.dart';
import 'package:spotify_clone/presentation/auth/pages/signin_or_signup.dart';
import 'package:spotify_clone/presentation/choose_mode/bloc/theme_cubit.dart';

import '../../../common/widgets/button/basic_app_button.dart';
import '../../../core/config/assets/app_vectors.dart';

class ChooseMode extends StatelessWidget {
  const ChooseMode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.chooseBg),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.15),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
            child: Column(
              children: [
                Align(alignment: Alignment.topCenter, child: Image.asset(AppVectors.logo, height: 200, width: 200)),
                const Spacer(),
                const Text(
                  "Choose Mode",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                ),
                const SizedBox(height: 40),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          context.read<ThemeCubit>().updateTheme(ThemeMode.dark);
                        },
                        child: ClipOval(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                            child: Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                  color: const Color(0xff30393C).withOpacity(0.5), shape: BoxShape.circle),
                              child: const Icon(Icons.nightlight_round, size: 40, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      const Text(
                        "Dark Theme",
                        style: TextStyle(color: appColors.grey, fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  const SizedBox(width: 40),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          context.read<ThemeCubit>().updateTheme(ThemeMode.light);
                        },
                        child: ClipOval(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                            child: Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                  color: const Color(0xff30393C).withOpacity(0.5), shape: BoxShape.circle),
                              child: const Icon(Icons.sunny, size: 40, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      const Text(
                        "Light Theme",
                        style: TextStyle(color: appColors.grey, fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ]),
                const SizedBox(height: 40),
                BasicAppButton(
                    onPressed: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (BuildContext context) => const SigninOrSignup()));
                    },
                    title: "Continue"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
