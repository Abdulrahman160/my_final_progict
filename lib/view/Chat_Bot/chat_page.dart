import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_final_progict/conestant/conset.dart';
import 'package:my_final_progict/conestant/image.dart';
import 'package:my_final_progict/widget/appbar_widget.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class MessageView extends StatefulWidget {
  const MessageView({Key? key}) : super(key: key);

  @override
  State<MessageView> createState() => _MessageViewState();
}

class _MessageViewState extends State<MessageView> {
  TextEditingController? controller = TextEditingController();

  List<Message> messages = [];
  bool isConnected = true;

  Future<void> checkConnectivity() async {
    final connectivityResult = await Connectivity().checkConnectivity();
    setState(() {
      isConnected = connectivityResult != ConnectivityResult.none;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        // AppBarWidget(
        //   title: 'Mentis Bot',
        //   fontSize: 22,
        // ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Center(
            child: Text(
              'Mentis Bot',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 5),
          height: 2,
          width: double.infinity,
          color: kBlack.withOpacity(.2),
        ),
        Expanded(
          child: ListView.separated(
              itemBuilder: (context, index) {
                return Container(
                  alignment: messages[index].isSendByMe
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  padding: EdgeInsets.all(10),
                  margin: messages[index].isSendByMe
                      ? EdgeInsets.only(
                          right: 10,
                          left: messages[index].isSendByMe ? 100 : 0,
                        )
                      : EdgeInsets.only(
                          left: 10,
                          right: messages[index].isSendByMe ? 0 : 100),
                  decoration: BoxDecoration(
                    color: messages[index].isSendByMe
                        ? kBlue
                        : GrayText.withOpacity(0.4),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(
                        messages[index].isSendByMe ? 10 : 0,
                      ),
                      bottomRight: Radius.circular(
                        messages[index].isSendByMe ? 0 : 10,
                      ),
                    ),
                  ),
                  child: Text(
                    messages[index].text,
                    style: TextStyle(
                      fontSize: 17,
                      color: messages[index].isSendByMe ? kWhite : kBlack,
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => SizedBox(
                    height: 15,
                  ),
              itemCount: messages.length),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Container(
            child: Row(
              children: [
                Expanded(
                  child: Focus(
                    autofocus: true,
                    child: TextFormField(
                      controller: controller,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none,
                        ),
                        fillColor: textResult.withOpacity(0.1),
                        filled: true,
                        contentPadding: EdgeInsets.all(11),
                        hintText: 'Type Your Message',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: InkWell(
                    onTap: () async {
                      if (controller!.text.isNotEmpty) {
                        messages.insert(
                          0,
                          Message(
                            text: controller!.text,
                            isSendByMe: true,
                          ),
                        );
                        controller!.clear();
                        print('0000' * 8);
                        setState(() {});
                        FormData formData = FormData();
                        formData.fields.addAll([
                          MapEntry('mes', controller!.text),
                        ]);
                        final response = await Dio().post(
                          'http://10.0.2.2:5000/bot',
                          data: formData,
                        );
                        print('0000' * 8);
                        messages.insert(
                          0,
                          Message(
                            text: response.data['res'],
                            isSendByMe: false,
                          ),
                        );
                        setState(() {});
                      }
                    },
                    child: Image.asset(
                      AppImage.send_icon,
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    ));
  }
}

class Message {
  final String text;
  final bool isSendByMe;

  Message({
    required this.text,
    required this.isSendByMe,
  });
}
