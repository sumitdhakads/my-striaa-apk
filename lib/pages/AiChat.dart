import 'package:flutter/material.dart';
import 'package:striaa/utils/app_utils.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/CustomAppbar.dart';
import 'package:striaa/widgets/dash.dart';
import 'package:striaa/widgets/image.dart';
import 'package:striaa/widgets/message.dart';

class AiChat extends StatefulWidget {
  const AiChat({super.key});

  @override
  State<AiChat> createState() => _AiChatState();
}

class _AiChatState extends State<AiChat> {
  final TextEditingController _textController = TextEditingController();
  final List<Message> _messages = <Message>[];
  final FocusNode _focusNode = FocusNode();

  void _handleSubmitted(String text) {
    _textController.clear();
    Message message = Message(
      text: text,
      isSentByUser: true, // Mark the message as sent by the user
    );
    setState(() {
      _messages.insert(0, message); // Add to the top of the list
    });
    _focusNode.requestFocus(); // Refocus the text field
  }

  @override
  void initState() {
    super.initState();

    // Preloading some messages on the left side (from the bot)
    _messages.addAll([
      Message(text: "Hello, how can I assist you?", isSentByUser: false),
      Message(text: "Feel free to ask anything.", isSentByUser: false),
    ]);
  }


  Widget _textComposerWidget() {
    return Container(
        margin: const EdgeInsets.only(left: 15,right: 4,top: 4,bottom: 4),

        child: Row(
          children: <Widget>[
            SvgIcon(icon: ImageUtil.uploadsvg,height: 20,),
            SizedBox(width: 4,),
            SvgIcon(icon: ImageUtil.attachmentsvg,height: 20,),
            SizedBox(width: 10,),
            Container(height: 12,width: 3,
            color: ColorUtil.textLightGrey,),
            SizedBox(width: 10,),
            Flexible(
              child: TextField(
                focusNode: _focusNode, // Attach the focus node
                decoration: InputDecoration.collapsed(
                  hintText: "Type your message",
                  hintStyle: FontUtil.font14N(color: ColorUtil.textLightGrey),
                  border: InputBorder.none,
                ),
                style: FontUtil.font16M(color: Colors.black),
                autofocus: true,
                controller: _textController,
                onSubmitted: _handleSubmitted,
              ),
            ),
            InkWell(
              onTap: () => _handleSubmitted(_textController.text),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                decoration: BoxDecoration(
                  color: ColorUtil.primaryColor,
                  shape: BoxShape.circle,
                ),
                child: SvgIcon(
                    icon: ImageUtil.whitesendsvg,
                )
              ),
            )
          ],
        ),
    );
  }


  @override
  void dispose() {
    _textController.dispose();
    _focusNode.dispose(); // Dispose the focus node
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        width: 200,
        leading: Row(
          children: [
            InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                margin: EdgeInsets.only(left: 15),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 0.5,color: Color(0xFFC9CBD1)),
                ),
                child: SvgIcon(
                  icon: ImageUtil.leftblacksvg,
                ),
              ),
            ),
            SizedBox(width: 12,),
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: ImageWidget(
                height: 44,
                image: ImageUtil.newbot,
              ),
            ),
            SizedBox(width: 12,),
            Text("Dr. Didi",style: FontUtil.font16SB(),)
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: <Widget>[
            SizedBox(height: 15,),
            DashedLine(width: appwidth(context)),
            Flexible(
              child: ListView.builder(
                padding: EdgeInsets.all(8),
                reverse: true,
                itemBuilder: (_, int index) => _messages[index],
                itemCount: _messages.length,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 18),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: _textComposerWidget(), // Call the function here
              ),
            ),
          ],
        ),
      )
    );
  }
}
