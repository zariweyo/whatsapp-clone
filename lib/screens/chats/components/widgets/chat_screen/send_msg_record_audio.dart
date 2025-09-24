import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whoishe/constants/colors.dart';
import 'package:whoishe/screens/chats/bloc/chat_bloc.dart';
import 'package:whoishe/screens/chats/bloc/chat_event.dart';

class SendMessageAndRecordAudioWidget extends StatelessWidget {
  const SendMessageAndRecordAudioWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Row(children: [
      Expanded(
          child: Container(
        decoration: BoxDecoration(
          color: kchatBarMessage,
          borderRadius: BorderRadius.circular(20.0),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 4.5),
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.sentiment_satisfied_outlined),
            ),
            Expanded(
                child: TextField(
              controller: controller,
              style: const TextStyle(color: Colors.white),
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintStyle: TextStyle(color: kTextDarkColor),
                hintText: 'Message',
              ),
            )),
          ],
        ),
      )),
      Container(
        decoration:
            const BoxDecoration(color: kPrimaryColor, shape: BoxShape.circle),
        child: IconButton(
          onPressed: () {
            if (controller.text.isNotEmpty) {
              BlocProvider.of<ChatBloc>(context)
                  .add(SendMessageEvent(text: controller.text));
              controller.text = "";
            }
          },
          icon: const Icon(Icons.send, color: Colors.black),
        ),
      ),
    ]);
  }
}
