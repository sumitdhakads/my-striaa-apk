import 'package:flutter/material.dart';
import 'package:striaa/pages/question1.dart';
import 'package:striaa/utils/app_utils.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/CustomAppbar.dart';
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
  String? _selectedGender; // State for selected gender

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

          // Dropdown for Gender selection
          _buildGenderDropdown(),

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
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
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
      ),
    );
  }

  // Helper function to build gender dropdown
  Widget _buildGenderDropdown() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Gender*",style: FontUtil.font14SB(),),
        SizedBox(height: 10,),
        Container(
          padding: EdgeInsets.only(left: 20,right: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
          ),
          child: DropdownButtonFormField<String>(
            style: FontUtil.font14N(),
            value: _selectedGender,
            decoration: InputDecoration(
         suffixIcon: Padding(
           padding: EdgeInsets.symmetric(vertical: 12),
           child: SvgIcon(icon: ImageUtil.downicon),
         ),
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(bottom: 10,top: 10),
              hintText: 'Select your gender',
              hintStyle: FontUtil.font12N(color: ColorUtil.textLightGrey,),
            ),
            items: ['Male', 'Female', 'Other'].map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value,style:FontUtil.font14N(),),
              );
            }).toList(),
            onChanged: (newValue) {
              setState(() {
                _selectedGender = newValue;
              });
            },
            icon: SizedBox(),
          ),
        ),
      ],
    );
  }
}
