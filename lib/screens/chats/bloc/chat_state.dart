import 'package:equatable/equatable.dart';
import 'package:whoishe/models/message.dart';

class ChatState extends Equatable {
  final List<Message> messages;

  const ChatState({required this.messages});

  @override
  List<Object?> get props => [messages];
}
