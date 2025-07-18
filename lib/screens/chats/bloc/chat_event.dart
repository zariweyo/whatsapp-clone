import 'package:equatable/equatable.dart';

abstract class ChatEvent extends Equatable {
  const ChatEvent();

  @override
  List<Object?> get props => [];
}

class SendMessageEvent extends ChatEvent {
  final String text;
  const SendMessageEvent({required this.text});
}

class AskBobEvent extends ChatEvent {
  final String text;
  const AskBobEvent({required this.text});
}
