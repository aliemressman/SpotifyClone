import 'package:flutter/material.dart';
import 'package:spotify_clone/common/helpers/is_dark_mode.dart';

class BasicAppBar extends StatefulWidget {
  const BasicAppBar({super.key});

  @override
  State<BasicAppBar> createState() => _BasicAppBarState();
}

class _BasicAppBarState extends State<BasicAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: context.isDarkMode ? Colors.white.withOpacity(0.03) : Colors.black.withOpacity(0.04)),
            child: Icon(
              Icons.arrow_back_ios,
              size: 16,
              color: context.isDarkMode ? Colors.white : Colors.black,
            ),
          ),
        ));
  }
}
