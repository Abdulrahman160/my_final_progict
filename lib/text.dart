// // import 'package:flutter/material.dart';
// // import 'package:firebase_core/firebase_core.dart';
// // import 'package:cloud_firestore/cloud_firestore.dart';
// //
// // void main() async {
// //   WidgetsFlutterBinding.ensureInitialized();
// //   await Firebase.initializeApp();
// //   runApp(ChatApp());
// // }
// //
// // class ChatApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Chat Bot',
// //       home: ChatScreen(),
// //     );
// //   }
// // }
// //
// // class ChatScreen extends StatefulWidget {
// //   @override
// //   _ChatScreenState createState() => _ChatScreenState();
// // }
// //
// // class _ChatScreenState extends State<ChatScreen> {
// //   final TextEditingController _textController = TextEditingController();
// //   final FirebaseFirestore _firestore = FirebaseFirestore.instance;
// //   final List<ChatMessage> _messages = <ChatMessage>[];
// //
// //   void _handleSubmitted(String text) {
// //     _textController.clear();
// //     ChatMessage message = ChatMessage(
// //       text: text,
// //       name: 'Me',
// //       type: true,
// //     );
// //     setState(() {
// //       _messages.insert(0, message);
// //     });
// //
// //     _firestore.collection('messages').add({
// //       'text': text,
// //       'name': 'Bot',
// //     }).then((value) {
// //       String botText = 'Hello! This is a bot.';
// //       ChatMessage botMessage = ChatMessage(
// //         text: botText,
// //         name: 'Bot',
// //         type: false,
// //       );
// //       setState(() {
// //         _messages.insert(0, botMessage);
// //       });
// //     });
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Chat Bot'),
// //       ),
// //       body: Column(
// //         children: <Widget>[
// //           Flexible(
// //             child: StreamBuilder<QuerySnapshot>(
// //               stream: _firestore.collection('messages').snapshots(),
// //               builder: (context, snapshot) {
// //                 if (!snapshot.hasData) {
// //                   return Center(
// //                     child: CircularProgressIndicator(),
// //                   );
// //                 }
// //                 List<DocumentSnapshot> documents = snapshot.data!.docs;
// //                 List<ChatMessage> messages = documents
// //                     .map((doc) => ChatMessage(
// //                   text: doc['text'],
// //                   name: doc['name'],
// //                   type: false,
// //                 ))
// //                     .toList();
// //                 return ListView.builder(
// //                   padding: EdgeInsets.all(8.0),
// //                   reverse: true,
// //                   itemBuilder: (_, int index) => messages[index],
// //                   itemCount: messages.length,
// //                 );
// //               },
// //             ),
// //           ),
// //           Divider(height: 1.0),
// //           Container(
// //             decoration: BoxDecoration(
// //               color: Theme.of(context).cardColor,
// //             ),
// //             child: Row(
// //               children: <Widget>[
// //                 Expanded(
// //                   child: TextField(
// //                     controller: _textController,
// //                     decoration: InputDecoration(
// //                       hintText: 'Type a message',
// //                     ),
// //                     onSubmitted: _handleSubmitted,
// //                   ),
// //                 ),
// //                 IconButton(
// //                   icon: Icon(Icons.send),
// //                   onPressed: () => _handleSubmitted(_textController.text),
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }
// //
// // class ChatMessage extends StatelessWidget {
// //   ChatMessage({required this.text,required this.name, required this.type});
// //
// //   final String text;
// //   final String name;
// //   final bool type;
// //
// //   List<Widget> get messageChildren {
// //     return <Widget>[
// //       Text(name + ': '),
// //       Text(text),
// //     ];
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       margin: EdgeInsets.symmetric(vertical: 10.0),
// //       child: Row(
// //         crossAxisAlignment:
// //         type ? CrossAxisAlignment.end : CrossAxisAlignment.start,
// //         children: <Widget>[
// //           type
// //               ? Expanded(child: Column(children: messageChildren))
// //               : Padding(
// //             padding: EdgeInsets.only(right: 16.0),
// //             child: CircleAvatar(child: Text(name[0])),
// //           ),
// //           !type
// //               ? Expanded(child: Column(children: messageChildren))
// //               : Padding(
// //             padding: EdgeInsets.only(left: 16.0),
// //             child: CircleAvatar(child: Text(name[0])),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }
//
//
//
//
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// import 'main.dart';
//
//
// class ChatDetailsScreen extends StatelessWidget {
//
//
//   ChatDetailsScreen( {Key? key}) : super(key: key);
//
//   var messageController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         titleSpacing: 0,
//         title: Row(
//           children: [
//             CircleAvatar(
//               radius: 22,
//               backgroundImage: NetworkImage(userModel.image),
//             ),
//             const SizedBox(
//               width: 15,
//             ),
//             Text(userModel.name)
//           ],
//         ),
//       ),
//       body: BuildCondition(
//         condition: true,
//         builder: (context) => Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: Column(
//             children: [
//               Expanded(
//                 child: ListView.separated(
//                     itemBuilder: (context,index){
//                       var message = ChatCubit.get(context).messages[index];
//                       if(ChatCubit.get(context).userModel!.uId== message.senderId){
//                         return buildMyMessage(message);
//                       }else {
//                         return buildMessage(message);
//                       }
//                     },
//                     separatorBuilder: (context,index)=> const SizedBox(height: 5,),
//                     itemCount: ChatCubit.get(context).messages.length),
//               ),
//               Container(
//                 decoration: BoxDecoration(
//                   border: Border.all(
//                     color: Colors.grey,
//                   ),
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: Row(
//                   children: [
//                     Expanded(
//                       child: Padding(
//                         padding: const EdgeInsets.only(left: 5, top: 3),
//                         child: TextFormField(
//                           controller: messageController,
//                           decoration: const InputDecoration(
//                             hintText: 'Write here ....',
//                             border: InputBorder.none,
//                           ),
//                         ),
//                       ),
//                     ),
//                     MaterialButton(
//                       onPressed: () {
//                         ChatCubit.get(context).sendMessage(
//                             receiverId:userIdNumber,
//                             dateTime: DateTime.now().toString(),
//                             text: messageController.text);
//                       },
//                       child: Icon(
//                         Icons.send,
//                         color: Colors.red,
//                       ),
//                     )
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//         fallback: (context) =>
//         const Center(child: CircularProgressIndicator()),
//       ),
//     );
//   }
//
//   Widget buildMyMessage(MessageModel model) {
//     return Align(
//       alignment: AlignmentDirectional.centerEnd,
//       child: Container(
//         decoration: BoxDecoration(
//           color: color2.withOpacity(.7),
//           borderRadius: const BorderRadiusDirectional.only(
//             topEnd: Radius.circular(10),
//             topStart: Radius.circular(10),
//             bottomStart: Radius.circular(10),
//           ),
//         ),
//         padding: const EdgeInsets.symmetric(
//           vertical: 10,
//           horizontal: 10,
//         ),
//         child: Text( '${model.text}'),
//       ),
//     );
//   }
//
//   Widget buildMessage(MessageModel model) {
//     return Align(
//       alignment: AlignmentDirectional.centerStart,
//       child: Container(
//         decoration: BoxDecoration(
//           color: color1.withOpacity(.2),
//           borderRadius: const BorderRadiusDirectional.only(
//             topEnd: Radius.circular(10),
//             topStart: Radius.circular(10),
//             bottomEnd: Radius.circular(10),
//           ),
//         ),
//         padding: const EdgeInsets.symmetric(
//           vertical: 10,
//           horizontal: 10,
//         ),
//         child: Text('${model.text}'),
//       ),
//     );
//   }
// }
// void sendMessage({
//   required String receiverId,
//   required String dateTime,
//   required String text,
// }) {
//   MessageModel model = MessageModel(
//     senderId: userModel!.uId,
//     receiverId: receiverId,
//     dateTime: dateTime,
//     text: text,
//   );
//   //sender Chat
//   FirebaseFirestore.instance
//       .collection('users')
//       .doc(userModel!.uId)
//       .collection('chats')
//       .doc(receiverId)
//       .collection('message')
//       .add(model.toMap())
//       .then((value) {
//     emit(SuccessSendMessageStates());
//   }).catchError((error) {
//     emit(ErrorSendMessageStates());
//   });
// //receiver Chat
//   FirebaseFirestore.instance
//       .collection('users')
//       .doc(receiverId)
//       .collection('chats')
//       .doc(userModel!.uId)
//       .collection('message')
//       .add(model.toMap())
//       .then((value) {
//     emit(SuccessSendMessageStates());
//   }).catchError((error) {
//     emit(ErrorSendMessageStates());
//   });
// }
//
