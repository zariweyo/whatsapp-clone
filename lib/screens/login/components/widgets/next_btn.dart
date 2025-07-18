import 'package:flutter/material.dart';
import 'package:whoishe/constants/colors.dart';
import 'package:whoishe/screens/otp/otp_screen.dart';

class NextButton extends StatelessWidget {
  const NextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: kPrimaryColor,
      ),
      child: TextButton(
        onPressed: () => Navigator.pushNamed(context, OTPScreen.routeName),
        child: const Text('Next', style: TextStyle(color: Colors.black)),
      ),
    );
  }
}
