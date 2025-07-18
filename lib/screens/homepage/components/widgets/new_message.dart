import 'package:flutter/material.dart';
import 'package:whoishe/constants/colors.dart';

class NewMessageWidget extends StatelessWidget {
  const NewMessageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: kPrimaryColor,
      onPressed: () {},
      child: const Icon(Icons.message_rounded),
    );
  }
}
