import 'package:flutter/material.dart';
import 'package:striaa/pages/StriaaPage.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/magicalbox.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Magicalbox(image: ImageUtil.didichat,onPressed: (){
          Navigator.pop(context);
        },)
    );
  }
}