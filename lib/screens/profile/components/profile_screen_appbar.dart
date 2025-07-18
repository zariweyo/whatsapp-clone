import 'package:flutter/material.dart';
import 'package:whoishe/constants/colors.dart';

AppBar profileScreenAppBar() {
  return AppBar(
    title: const Text(
      'Profile',
      style: TextStyle(
        color: kTextColor,
        fontSize: 20.0,
      ),
    ),
  );
}
