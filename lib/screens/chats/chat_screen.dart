import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_clone/screens/chats/bloc/chat_bloc.dart';
import 'package:whatsapp_clone/screens/chats/bloc/chat_state.dart';
import 'package:whatsapp_clone/screens/chats/components/chat_screen_body.dart';
import 'package:whatsapp_clone/screens/chats/components/widgets/chat_screen/chat_screen_appbar.dart';

class ChatScreen extends StatelessWidget {
  static String routeName = '/chat-screen';
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => ChatBloc(const ChatState(messages: [])),
        child:
            Scaffold(appBar: chatScreenAppBar(), body: const ChatScreenBody()));
  }
}
