import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:my_final_progict/conestant/conset.dart';
import 'package:my_final_progict/conestant/image.dart';

class MessageView extends StatefulWidget {
  const MessageView({Key? key}) : super(key: key);

  @override
  State<MessageView> createState() => _MessageViewState();
}

class _MessageViewState extends State<MessageView> {
  Message message=Message(text: '',date: DateTime.now(),isSendByMe: false);
  List<Message> messages = [
    Message(
      text: 'hallo',
      date: DateTime.now().subtract(Duration(minutes: 1)),
      isSendByMe: false,
    ),
    Message(
      text: 'bay',
      date: DateTime.now().subtract(Duration(minutes: 1)),
      isSendByMe: true,
    ),
    Message(
      text: 'welcom',
      date: DateTime.now().subtract(Duration(minutes: 1)),
      isSendByMe: false,
    ),
  ].reversed.toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: GroupedListView<Message, DateTime>(
            elements: messages,
            groupBy: (message) => DateTime(
              message.date.year,
              message.date.hour,
              message.date.minute,
            ),
            groupHeaderBuilder: (Message message) => SizedBox(),
            itemBuilder: (context, Message message) => Align(
              alignment: message.isSendByMe
                  ? Alignment.centerRight
                  : Alignment.centerLeft,
              child: Card(
                elevation: 8,
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(message.text),
                ),
              ),
            ),
          )),
          Container(
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      fillColor: textResult.withOpacity(0.3),
                      filled: true,
                      contentPadding: EdgeInsets.all(11),
                      hintText: 'message',
                    ),
                    onFieldSubmitted: (newValue) {
                       message = Message(
                          text: newValue!,
                          date: DateTime.now(),
                          isSendByMe: true);
                      setState(
                        () {
                          messages.add(message);
                          newValue='';
                        },
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: InkWell(
                    child: Image.asset(AppImage.send_icon),

                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Message {
  final String text;
  final bool isSendByMe;
  final DateTime date;

  Message({
    required this.text,
    required this.date,
    required this.isSendByMe,
  });
}
