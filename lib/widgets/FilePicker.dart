import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/image.dart';

class OurFilepicker extends StatefulWidget {
  const OurFilepicker({super.key});

  @override
  State<OurFilepicker> createState() => _OurFilepickerState();
}

class _OurFilepickerState extends State<OurFilepicker> {

  String? _selectedFile;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        FilePickerResult? result = await FilePicker.platform.pickFiles();
        if (result != null) {
          PlatformFile file = result.files.first;
          setState(() {
            _selectedFile = file.name.substring(0,7);
          });
        }
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 14, horizontal: 40),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Row(
          children: [
            SvgIcon(icon: ImageUtil.uploadicon),
            SizedBox(width: 10),
            Text(
              _selectedFile == null ? "Upload File" : _selectedFile!,
              style: FontUtil.font12SB(color: Colors.white),
            ),
          ],
        ),
      ),
    );;
  }
}
