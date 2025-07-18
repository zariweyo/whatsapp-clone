import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:whatsapp_clone/models/message.dart';
import 'package:whatsapp_clone/screens/chats/bloc/chat_event.dart';
import 'package:whatsapp_clone/screens/chats/bloc/chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc(super.initialState) {
    on<SendMessageEvent>(_mapSendMessageEvent);
    on<AskBobEvent>(_mapAskBobEvent);
  }

  FutureOr<void> _mapSendMessageEvent(
      SendMessageEvent event, Emitter<ChatState> emit) {
    Message message =
        Message(timeZ: DateTime.now().toUtc(), uuid: '1', text: event.text);

    emit(ChatState(messages: [...state.messages, message]));

    add(AskBobEvent(text: event.text));
  }

  FutureOr<void> _mapAskBobEvent(AskBobEvent event, Emitter<ChatState> emit) {
    Message message =
        Message(timeZ: DateTime.now().toUtc(), uuid: 'bob', text: "Soy Bob");

    emit(ChatState(messages: [...state.messages, message]));
  }
}
