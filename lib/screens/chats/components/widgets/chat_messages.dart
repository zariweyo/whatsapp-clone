import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whoishe/models/messages.dart';
import 'package:whoishe/screens/chats/bloc/chat_bloc.dart';
import 'package:whoishe/screens/chats/bloc/chat_state.dart';
import 'package:whoishe/screens/chats/components/widgets/messages/receiver_message_bubble.dart';
import 'package:whoishe/screens/chats/components/widgets/messages/sender_message_bubble.dart';

class ChatScreenMessagesWidget extends StatelessWidget {
  const ChatScreenMessagesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatBloc, ChatState>(
        builder: (context, state) => Expanded(
              child: ListView.builder(
                itemCount: state.messages.length,
                itemBuilder: (context, index) {
                  if (state.messages[index].isSender == false) {
                    return ReceiverMessageBubble(
                      message: state.messages[index],
                    );
                  }
                  return SenderMessageBubble(
                    message: state.messages[index],
                  );
                },
              ),
            ));
  }
}
