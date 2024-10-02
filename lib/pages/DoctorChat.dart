import 'package:flutter/material.dart';
import 'package:striaa/utils/app_utils.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/CustomAppbar.dart';
import 'package:striaa/widgets/dash.dart';
import 'package:striaa/widgets/image.dart';
import 'package:striaa/widgets/line.dart';
import 'package:striaa/widgets/message.dart';
import 'package:intl/intl.dart'; // Import for date formatting

class DoctorChat extends StatefulWidget {
  const DoctorChat({
    super.key,
    required this.drname,
    required this.drimage,
  });

  final String drname;
  final String drimage;

  @override
  State<DoctorChat> createState() => _DoctorChatState();
}

class _DoctorChatState extends State<DoctorChat> {
  final TextEditingController _textController = TextEditingController();
  final List<DoctorMessage> _messages = <DoctorMessage>[];
  final FocusNode _focusNode = FocusNode();

  void _handleSubmitted(String text) {
    _textController.clear();
    DoctorMessage message = DoctorMessage(
      text: text,
      isSentByUser: true,
      consult: widget.drimage, // Pass the consult value
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
      DoctorMessage(text: "Hello, how can I assist you?", isSentByUser: false, consult: widget.drimage),
      DoctorMessage(text: "Feel free to ask anything.", isSentByUser: false, consult: widget.drimage),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        width: 350,
        leading: Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                margin: EdgeInsets.only(left: 15),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 0.5, color: Color(0xFFC9CBD1)),
                ),
                child: SvgIcon(
                  icon: ImageUtil.leftblacksvg,
                ),
              ),
            ),
            SizedBox(width: 12),
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: ImageWidget(
                height: 44,
                image: widget.drimage,
              ),
            ),
            SizedBox(width: 12),
            Text(widget.drname, style: FontUtil.font16SB()),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: <Widget>[
            SizedBox(height: 15),
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
      ),
    );
  }

  Widget _textComposerWidget() {
    return Container(
      margin: const EdgeInsets.only(left: 15, right: 4, top: 4, bottom: 4),
      child: Row(
        children: <Widget>[
          SvgIcon(icon: ImageUtil.uploadsvg, height: 20),
          SizedBox(width: 8),
          SvgIcon(icon: ImageUtil.attachmentsvg, height: 20),
          SizedBox(width: 10),
          Line(),
          SizedBox(width: 10),
          Flexible(
            child: TextField(
              focusNode: _focusNode, // Attach the focus node
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(bottom: 5),
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
              margin: EdgeInsets.only(left: 2),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                color: ColorUtil.primaryColor,
                shape: BoxShape.circle,
              ),
              child: SvgIcon(
                icon: ImageUtil.whitesendsvg,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DoctorMessage extends StatelessWidget {
  final String? text;
  final bool isSentByUser;
  final String? consult; // Add consult as a parameter

  DoctorMessage({super.key, this.text, required this.isSentByUser, this.consult});

  // Get the current time in 'hh:mm a' format
  String _formatCurrentTime() {
    return DateFormat('hh:mm a').format(DateTime.now());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: isSentByUser ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: <Widget>[
          if (!isSentByUser)
            Container(
              margin: EdgeInsets.only(right: 10),
              child: SizedBox(
                width: 44,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(35),
                  child: ImageWidget(
                    image: consult ?? ImageUtil.newbot, // Use consult if available
                  ),
                ),
              ),
            ),
          Flexible(
            child: Container(
              margin: EdgeInsets.only(
                left: isSentByUser ? 40 : 0, // Margin from left if sent by user
                right: isSentByUser ? 0 : 40, // Margin from right if not sent by user
              ),
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 15),
              decoration: BoxDecoration(
                color: isSentByUser ? ColorUtil.primaryColor : Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(isSentByUser ? 15 : 0),
                  topRight: Radius.circular(isSentByUser ? 0 : 15),
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Text(
                      text ?? '',
                      style: FontUtil.font14N(
                        color: isSentByUser ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 10), // Add space between message and time
                  Text(
                    _formatCurrentTime(), // Display the formatted time
                    style: FontUtil.font12M(color: isSentByUser ? Colors.white : ColorUtil.textLightGrey),
                  ),
                ],
              ),
            ),
          ),
          if (isSentByUser)
            Container(
              margin: EdgeInsets.only(left: 10),
              child: SizedBox(
                width: 44,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(35),
                  child: ImageWidget(
                    image: ImageUtil.useraccount, // Assuming you have a user image here
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
