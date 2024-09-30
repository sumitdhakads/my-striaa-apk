import 'package:flutter/material.dart';
import 'package:striaa/pages/question1.dart';
import 'package:striaa/utils/app_utils.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/CustomAppbar.dart';
import 'package:striaa/widgets/CustomDropDown.dart';
import 'package:striaa/widgets/SuffixTextFieldContainer.dart';
import 'package:striaa/widgets/TextFieldContainer.dart';
import 'package:striaa/widgets/button.dart';
import 'package:striaa/widgets/image.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {

  String? selectedValue = 'Male'; // Initial value for dropdown

  // List of dropdown options
  final List<String> dropdownItems = [
    "Male",
    "Female",
    "Other"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: "Edit Profile",
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: leftRightAppPadding),
        children: [
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Textfieldcontainer(
              title: "Age",
              hintText: "Enter your age",
            ),
          ),
          SizedBox(height: 15),
          Text("Gender",style: FontUtil.font14M(),),
          SizedBox(height: 10,),
          // Dropdown for Gender selection
          CustomDropdown(
            items: dropdownItems,
            selectedValue: selectedValue,
            onChanged: (String? newValue) {
              setState(() {
                selectedValue = newValue;
              });
            },
          ),
          SizedBox(height: 15),
          Textfieldcontainer(title: "Address", hintText: "Enter your address"),
          SizedBox(height: 15),
          Textfieldcontainer(
            title: "Area",
            hintText: "Search for your address",
          ),
          SizedBox(height: 15),
          Textfieldcontainer(title: "City*", hintText: "Enter your city"),
          SizedBox(height: 15),
          Textfieldcontainer(title: "State*", hintText: "Enter your State"),
          SizedBox(height: 15),
          Textfieldcontainer(
              title: "Blood Group", hintText: "Enter your blood group"),
          SizedBox(height: 60), // Spacing to ensure no content is cut off
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: ColorUtil.secondaryColor,
        elevation: 2,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          child: ButtonWidget(
            onPressed: () {
              // Handle continue button press
              Navigator.pop(context);
            },
            color: Theme.of(context).primaryColor,
            text: 'Continue',
            textColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
