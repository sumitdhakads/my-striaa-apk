import 'package:flutter/material.dart';
import 'package:striaa/pages/registrationCompleted.dart';
import 'package:striaa/utils/app_utils.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/widgets/CustomDropDown.dart';
import 'package:striaa/widgets/FilePicker.dart';
import 'package:striaa/widgets/button.dart';
import 'package:striaa/widgets/progressbar.dart';

class Question6 extends StatefulWidget {
  @override
  _Question6State createState() => _Question6State();
}

class _Question6State extends State<Question6> {
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
      body: Column(
        children: [
          // Body content with rounded corners
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
                  // Progress bar
                  ProgressBar(progress: 0.9),
                  SizedBox(height: 74),
                  Text(
                    'Please share Result of any Mammogram or USG Breasts done earlier',
                    style: FontUtil.font26SB(height: 1.38),
                  ),
                  SizedBox(height: 30),

                  // Custom Dropdown Button
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
                  // File Picker Button
                  SizedBox(
                      width: appwidth(context) / 2.6,
                      child: OurFilepicker()
                  ),
                  SizedBox(height: 15),
                  Text(
                    "*Not applicable",
                    style: FontUtil.font12N(color: ColorUtil.textLightGrey),
                  ),
                  Spacer(),
                  ButtonWidget(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegistrationCompleted()),
                      );
                    },
                    color: Theme.of(context).primaryColor,
                    text: 'Continue',
                    textColor: Colors.white,
                  ),
                  SizedBox(height: 25),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:striaa/pages/registrationCompleted.dart';
// import 'package:striaa/utils/app_utils.dart';
// import 'package:striaa/utils/color_util.dart';
// import 'package:striaa/utils/font_util.dart';
// import 'package:striaa/utils/image_util.dart';
// import 'package:striaa/widgets/FilePicker.dart';
// import 'package:striaa/widgets/button.dart';
// import 'package:striaa/widgets/image.dart';
// import 'package:striaa/widgets/progressbar.dart';
//
// class Question6 extends StatefulWidget {
//   @override
//   _Question6State createState() => _Question6State();
// }
//
// class _Question6State extends State<Question6> {
//   String? selectedValue = 'BIRADS1'; // Initial value for dropdown
//
//   // List of dropdown options
//   final List<String> dropdownItems = [
//     'BIRADS1',
//     'BIRADS2',
//     'BIRADS3',
//     'BIRADS4',
//     'BIRADS5'
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           // Body content with rounded corners
//           Expanded(
//             child: Container(
//               padding: EdgeInsets.symmetric(horizontal: leftRightAppPadding),
//               decoration: BoxDecoration(
//                 color: ColorUtil.secondaryColor,
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(30),
//                   topRight: Radius.circular(30),
//                 ),
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   // Progress bar
//                   ProgressBar(progress: 0.9),
//                   SizedBox(height: 74),
//                   Text(
//                     'Please share Result of any Mammogram or USG Breasts done earlier',
//                     style: FontUtil.font26SB(height: 1.38),
//                   ),
//                   SizedBox(height: 30),
//
//                   // Dropdown Button
//                   Container(
//                     padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(40),
//                     ),
//                     child: DropdownButtonFormField<String>(
//                       value: selectedValue,
//                       icon: SvgIcon(
//                         icon: ImageUtil.downicon,
//                       ),
//                       decoration: InputDecoration(
//                         border: InputBorder.none, // No underline or border
//                       ),
//                       style: FontUtil.font14M(color: Colors.black),
//                       onChanged: (String? newValue) {
//                         setState(() {
//                           selectedValue = newValue;
//                         });
//                       },
//                       items: dropdownItems.map<DropdownMenuItem<String>>((String value) {
//                         return DropdownMenuItem<String>(
//                           value: value,
//                           child: Text(value),
//                         );
//                       }).toList(),
//                     ),
//                   ),
//
//                   SizedBox(height: 15),
//                   // File Picker Button
//                   SizedBox(
//                       width: appwidth(context) / 2.6,
//                       child: OurFilepicker()
//                   ),
//                   SizedBox(height: 15),
//                   Text(
//                     "*Not applicable",
//                     style: FontUtil.font12N(color: ColorUtil.textLightGrey),
//                   ),
//                   Spacer(),
//                   ButtonWidget(
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => RegistrationCompleted()),
//                       );
//                     },
//                     color: Theme.of(context).primaryColor,
//                     text: 'Continue',
//                     textColor: Colors.white,
//                   ),
//                   SizedBox(height: 25),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
