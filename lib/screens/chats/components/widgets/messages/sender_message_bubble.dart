import 'package:flutter/material.dart';
import 'package:whoishe/constants/colors.dart';
import 'package:whoishe/extensions/datetime.extension.dart';
import 'package:whoishe/models/message.dart';

class SenderMessageBubble extends StatelessWidget {
  final Message message;

  const SenderMessageBubble({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ConstrainedBox(
        constraints: BoxConstraints(
            maxWidth: message.text.characters.length > 10
                ? MediaQuery.of(context).size.width * .65
                : MediaQuery.of(context).size.width * .3),
        child: Card(
          color: ksenderMessageBubbleColor,
          elevation: 1.0,
          margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.0),
            bottomRight: Radius.circular(10.0),
            bottomLeft: Radius.circular(10.0),
          )),
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
                child: Text(
                  message.text,
                  style: const TextStyle(color: kTextColor),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5.0, bottom: 3.0),
                    child: Text(
                      message.timeZ.toLocal().toHourMinute(),
                      style: const TextStyle(
                          color: kTextDarkColor, fontSize: 12.0),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 10.0, bottom: 3.0),
                    child:
                        Icon(Icons.done_all, color: kBlueTickColor, size: 16.0),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
