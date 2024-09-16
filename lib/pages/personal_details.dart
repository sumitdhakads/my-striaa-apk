import 'package:flutter/material.dart';
import 'package:striaa/pages/question1.dart';
import 'package:striaa/utils/app_utils.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/CustomAppbar.dart';
import 'package:striaa/widgets/SuffixTextFieldContainer.dart';
import 'package:striaa/widgets/TextFieldContainer.dart';
import 'package:striaa/widgets/button.dart';
import 'package:striaa/widgets/image.dart';

class PersonalDetails extends StatelessWidget {
  const PersonalDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: CustomAppbar(
          title: "Personal details",
          leading: Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: CircleAvatar(
                  child: SvgIcon(
                    icon: ImageUtil.left,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: leftRightAppPadding),
        children: [
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Textfieldcontainer(
              title: "Age*",
              hintText: "Enter your age",
            ),
          ),
          SizedBox(height: 15),
          SuffixTextFieldContainer(
              title: "Gender*",
              hintText: "Select your gender",
              suffixicon: SvgIcon(
                icon: ImageUtil.downicon,
              )),
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
              title: "Blood Group*", hintText: "Enter your blood group"),
          SizedBox(height: 60), // Spacing to ensure no content is cut off
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 2,
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
}
