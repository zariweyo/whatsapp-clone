import 'package:flutter/material.dart';
import 'package:whoishe/common/screens/homescreen.dart';
import 'package:whoishe/constants/colors.dart';
import 'package:whoishe/firebase_options.dart';
import 'package:whoishe/routes.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const WhatsAppClone());
}

class WhatsAppClone extends StatelessWidget {
  const WhatsAppClone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            color: kAppBarColor,
            iconTheme: IconThemeData(color: kIconColor),
            titleTextStyle: TextStyle(
              color: kTextColor,
              fontSize: 18.0,
            )),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: kbackgroundColor,
          enableFeedback: false,
          selectedIconTheme: IconThemeData(
              color: kIconColor, shadows: [Shadow(color: kbackgroundColor)]),
          selectedItemColor: kTextColor,
          unselectedIconTheme: IconThemeData(
            color: kIconColor,
          ),
          unselectedItemColor: kTextColor,
          type: BottomNavigationBarType.fixed,
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: kPrimaryColor),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: kPrimaryColor,
        ),
        scaffoldBackgroundColor: kbackgroundColor,
        useMaterial3: true,
      ),
      initialRoute: HomeScreen.routeName,
      routes: routes,
      home: const HomeScreen(),
    );
  }
}
