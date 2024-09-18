import 'package:flutter/material.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';

class OurDropdown extends StatefulWidget {
  const OurDropdown({super.key});

  @override
  State<OurDropdown> createState() => _OurDropdownState();
}

class _OurDropdownState extends State<OurDropdown> {

  String? _selectedDropdownValue;
  List<String> dropdownItems = ['BIRADS1', 'BIRADS2', 'BIRADS3'];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
      ),
      child: DropdownButtonFormField<String>(
        value: _selectedDropdownValue,
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(bottom: 10), // Vertically centers the hint
          alignLabelWithHint: true, // Ensures hint is aligned with input text
          hintText: 'Select BIRADS Level',
          hintStyle: FontUtil.font12SB(color: ColorUtil.textLightGrey),
        ),
        items: dropdownItems.map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: (newValue) {
          setState(() {
            _selectedDropdownValue = newValue;
          });
        },
      ),
    );
  }
}
