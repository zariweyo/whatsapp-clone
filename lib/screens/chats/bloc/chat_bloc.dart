import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:whoishe/models/message.dart';
import 'package:whoishe/screens/chats/bloc/bob_chat_repository.dart';
import 'package:whoishe/screens/chats/bloc/chat_event.dart';
import 'package:whoishe/screens/chats/bloc/chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  late BobChatRepository bobChatRepository;
  ChatBloc(super.initialState) {
    bobChatRepository = BobChatRepository();

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

  FutureOr<void> _mapAskBobEvent(
      AskBobEvent event, Emitter<ChatState> emit) async {
    String response = await bobChatRepository.askBob(event.text);
    Message message =
        Message(timeZ: DateTime.now().toUtc(), uuid: 'bob', text: response);

    emit(ChatState(messages: [...state.messages, message]));
  }
}
