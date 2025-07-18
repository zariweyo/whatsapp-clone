class Message {
  final String uuid;
  final String text;
  final DateTime timeZ;

  Message({required this.uuid, required this.text, required this.timeZ});

  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
      uuid: json['uuid'] as String,
      text: json['text'] as String,
      timeZ: DateTime.parse(json['timeZ'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'uuid': uuid,
      'text': text,
      'timeZ': timeZ.toIso8601String(),
    };
  }

  bool get isSender => uuid == "1";
}
