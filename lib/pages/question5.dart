import 'package:flutter/material.dart';
import 'package:striaa/pages/question6.dart';
import 'package:striaa/pages/registrationCompleted.dart';
import 'package:striaa/utils/app_utils.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/CustomAppbar.dart';
import 'package:striaa/widgets/CustomDropDown.dart';
import 'package:striaa/widgets/CustomRadio.dart';
import 'package:striaa/widgets/FilePicker.dart';
import 'package:striaa/widgets/button.dart';
import 'package:striaa/widgets/dash.dart';
import 'package:striaa/widgets/progressbar.dart';

class Question5 extends StatefulWidget {
  @override
  _Question5State createState() => _Question5State();
}

class _Question5State extends State<Question5> {
  String? _selectedOption = 'No';
  bool _showTextFields = false;
  TextEditingController _usg = TextEditingController();

  String? selectedValue = 'BIRADS1'; // Initial value for dropdown

  // List of dropdown options
  final List<String> dropdownItems = [
    'BIRADS1',
    'BIRADS2',
    'BIRADS3',
    'BIRADS4',
    'BIRADS5'
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        icon: ImageUtil.leftwhiteicon,
        heigth: 72,
        bgcolor: ColorUtil.primaryColor,
        action: Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Text("Skip",style: FontUtil.font16N(color: Colors.white),),
        ),
        actiononTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => RegistrationCompleted()));
        },
      ),
      body: Container(
        color: ColorUtil.primaryColor,
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: leftRightAppPadding),
                decoration: BoxDecoration(
                  color: ColorUtil.secondaryColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 15),
                    ProgressBar(progress: 0.8),
                    SizedBox(height: 30),
                    Text(
                      'Please share Result of any Mammogram or USG Breasts done earlier',
                      style: FontUtil.font26SB(height: 1.38),
                    ),
                    SizedBox(height: 30),

                    // Use CustomRadioButton instead of _buildRadioButtonRow
                    CustomRadioButton(
                      title: 'Upload File',
                      value: 'Upload File',
                      groupValue: _selectedOption,
                      onChanged: (val) {
                        setState(() {
                          _selectedOption = val;
                          _showTextFields = val == 'Upload File';
                        });
                      },
                    ),
                     SizedBox(height: 20,),
                    CustomRadioButton(
                      title: 'Not applicable',
                      value: 'Not applicable',
                      groupValue: _selectedOption,
                      onChanged: (val) {
                        setState(() {
                          _selectedOption = val;
                          _showTextFields = false;
                        });
                      },
                    ),

                    // Conditionally show dropdown and file picker
                    if (_showTextFields) ...[

                      SizedBox(height: 30),
                      DashedLine(width: MediaQuery.of(context).size.width),
                      SizedBox(height: 30),
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
                      Container(
                        width: appwidth(context) / 2.6,
                        child: OurFilepicker(),
                      ),
                    ],

                    Spacer(),
                    ButtonWidget(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Question6()));
                      },
                      color: Theme.of(context).primaryColor,
                      text: 'Next',
                      textColor: Colors.white,
                    ),
                    SizedBox(height: 25),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
