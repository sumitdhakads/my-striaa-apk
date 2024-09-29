import 'package:flutter/material.dart';
import 'package:striaa/pages/StriaaPage.dart';
import 'package:striaa/pages/question5.dart';
import 'package:striaa/pages/registrationCompleted.dart';
import 'package:striaa/utils/app_utils.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/CustomAppbar.dart';
import 'package:striaa/widgets/CustomRadio.dart';
import 'package:striaa/widgets/button.dart';
import 'package:striaa/widgets/dash.dart';
import 'package:striaa/widgets/image.dart';
import 'package:striaa/widgets/progressbar.dart';
import 'package:intl/intl.dart'; // For formatting date

class Question4 extends StatefulWidget {
  @override
  _Question4State createState() => _Question4State();
}

class _Question4State extends State<Question4> {
  String _selectedOption = 'Within three months'; // Default value
  DateTime? _fromDate; // Store selected "From" date
  DateTime? _toDate; // Store selected "To" date

  // Function to show DatePicker and return selected date
  Future<void> _selectDate(BuildContext context, bool isFrom) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (pickedDate != null && pickedDate != (isFrom ? _fromDate : _toDate)) {
      setState(() {
        if (isFrom) {
          _fromDate = pickedDate;
        } else {
          _toDate = pickedDate;
        }
      });
    }
  }

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
        actiononTap: (){
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
                    // Progress Bar
                    ProgressBar(progress: 0.7),
                    SizedBox(height: 30),
                    Text(
                      'Last Menstrual Period',
                      style: FontUtil.font26SB(),
                    ),
                    SizedBox(height: 15),

                    // Date fields with click listeners
                    Row(
                      children: [
                        // "From" container
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              _selectDate(context, true); // Open date picker for "From" date
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: Row(
                                children: [
                                  Text("From: ", style: FontUtil.font12N(color: ColorUtil.textLightGrey)),
                                  Text(
                                    _fromDate != null
                                        ? DateFormat('dd/MM/yyyy').format(_fromDate!)
                                        : "DD/MM/YY",
                                    style: FontUtil.font12SB(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        // "To" container
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              _selectDate(context, false); // Open date picker for "To" date
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: Row(
                                children: [
                                  Text("To: ", style: FontUtil.font12N(color: ColorUtil.textLightGrey)),
                                  Text(
                                    _toDate != null
                                        ? DateFormat('dd/MM/yyyy').format(_toDate!)
                                        : "DD/MM/YY",
                                    style: FontUtil.font12SB(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    DashedLine(width: MediaQuery.of(context).size.width),
                    SizedBox(height: 30),
                    Text(
                      'When was the last time you had a Breast Examination?',
                      style: FontUtil.font26SB(height: 1.38),
                    ),
                    SizedBox(height: 30),

                    // Use the RadioButtonWidget for options
                    CustomRadioButton(
                      title: 'Within three months',
                      value: 'Within three months',
                      groupValue: _selectedOption,
                      onChanged: (val) {
                        setState(() {
                          _selectedOption = val ?? 'Within three months';
                        });
                      },
                    ),
                    SizedBox(height: 20),
                    CustomRadioButton(
                      title: '3 to 6 months ago',
                      value: '3 to 6 months ago',
                      groupValue: _selectedOption,
                      onChanged: (val) {
                        setState(() {
                          _selectedOption = val ?? 'Within three months';
                        });
                      },
                    ),
                    SizedBox(height: 20),
                    CustomRadioButton(
                      title: '6 months to 1 year ago',
                      value: '6 months to 1 year ago',
                      groupValue: _selectedOption,
                      onChanged: (val) {
                        setState(() {
                          _selectedOption = val ?? 'Within three months';
                        });
                      },
                    ),
                    SizedBox(height: 20),
                    CustomRadioButton(
                      title: 'None of the above',
                      value: 'None of the above',
                      groupValue: _selectedOption,
                      onChanged: (val) {
                        setState(() {
                          _selectedOption = val ?? 'Within three months';
                        });
                      },
                    ),
                    Spacer(),
                    ButtonWidget(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Question5()));
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
