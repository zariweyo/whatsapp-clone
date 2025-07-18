import 'package:flutter/material.dart';
import 'package:whoishe/common/screens/homescreen.dart';
import 'package:whoishe/screens/chats/chat_screen.dart';
import 'package:whoishe/screens/login/login_screen.dart';
import 'package:whoishe/screens/onboarding_screen/onboarding_screen.dart';
import 'package:whoishe/screens/otp/otp_screen.dart';
import 'package:whoishe/screens/profile/profile_screen.dart';
import 'package:whoishe/screens/settings/settings_screen.dart';
import 'package:whoishe/screens/signup/signup_screen.dart';

final Map<String, WidgetBuilder> routes = {
  OnboardingScreen.routeName: (context) => const OnboardingScreen(),
  LoginScreen.routeName: (context) => const LoginScreen(),
  OTPScreen.routeName: (context) => const OTPScreen(),
  SignupScreen.routeName: (context) => const SignupScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  ChatScreen.routeName: (context) => const ChatScreen(),
  SettingsScreen.routeName: (context) => const SettingsScreen(),
  ProfileScreen.routeName: (context) => const ProfileScreen(),
};
