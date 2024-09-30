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

class PersonalDetails extends StatefulWidget {
  const PersonalDetails({super.key});

  @override
  _PersonalDetailsState createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {


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
      appBar:CustomAppbar(
          title: "Personal details",
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: leftRightAppPadding),
        children: [
          Container(
            margin: EdgeInsets.only(top: 18),
            child: Textfieldcontainer(
              title: "Age*",
              hintText: "Enter your age",
            ),
          ),
          SizedBox(height: 15),
          Text("Gender*",style: FontUtil.font14M(),),
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
          SuffixTextFieldContainer(
              title: "Area",
              hintText: "Search for your address",
              suffixicon: SvgIcon(
                icon: ImageUtil.areaicon,
              )),
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
        child: ButtonWidget(
            onPressed: () {
              // Handle continue button press
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Question1()));
            },
            color: Theme.of(context).primaryColor,
            text: 'Continue',
            textColor: Colors.white,
          ),
      ),
    );
  }

}
