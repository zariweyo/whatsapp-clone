class Chat {
  final String profilePicture;
  final String username;
  final String message;
  final String timeStamp;
  final bool isRead;
  final bool isReceived;
  final bool isSender;

  Chat({
    required this.username,
    required this.message,
    required this.profilePicture,
    required this.timeStamp,
    this.isSender = true,
    this.isRead = false,
    this.isReceived = false,
  });
}

// demo data - chats
List<Chat> userMessages = [
  Chat(
    username: 'Firt App',
    message: 'Hello daddzzzyy! 😍😍',
    profilePicture: 'assets/img/dps/8.jpg',
    timeStamp: '13:45',
    isSender: false,
  ),
];
