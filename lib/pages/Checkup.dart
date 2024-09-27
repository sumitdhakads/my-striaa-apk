import 'package:flutter/material.dart';
import 'package:striaa/utils/app_utils.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/CustomAppbar.dart';
import 'package:striaa/widgets/image.dart';

class Checkup extends StatelessWidget {
  const Checkup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: CustomAppbar(
          title: "Self Checkup",
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(horizontal: leftRightAppPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              child: ImageWidget(
                image: ImageUtil.redcloud,
              ),
            ),
            Center(
              child: Container(
                child: Stack(
                  children: [
                    Positioned(
                      child: Container(
                        child: ImageWidget(
                          image: ImageUtil.doctordidi,
                        ),
                      ),
                      top: 5,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:striaa/utils/image_util.dart';
// import 'package:striaa/widgets/CustomAppbar.dart';
// import 'package:striaa/widgets/image.dart';
//
// class Checkup extends StatelessWidget {
//   const Checkup({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         title: CustomAppbar(
//           title: "Self Checkup",
//           leading: Row(
//             children: [
//               InkWell(
//                 onTap: () {
//                   Navigator.pop(context);
//                 },
//                 child: CircleAvatar(
//                   child: SvgIcon(
//                     icon: ImageUtil.left,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           // Doctor image with speech bubble
//           Stack(
//             alignment: Alignment.topCenter,
//             children: [
//               // Doctor image
//               Image.asset(
//                 ImageUtil.doctordidi,
//                 height: 300,
//                 width: 300,
//               ),
//               // Speech bubble
//               Positioned(
//                 top: 20,
//                 right: 30,
//                 child: Image.asset(
//                   ImageUtil.redcloud,
//                   width: 150,
//                   height: 100,
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(height: 20),
//
//           // Audio Icon
//           Align(
//             alignment: Alignment.center,
//             child: Container(
//               padding: const EdgeInsets.all(10),
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: Colors.black12,
//               ),
//               child: Image.asset(
//                 ImageUtil.blackaudio,
//                 height: 50,
//                 width: 50,
//               ),
//             ),
//           ),
//           const SizedBox(height: 30),
//
//           // Start button
//           Container(
//             padding: const EdgeInsets.symmetric(horizontal: 20),
//             child: ElevatedButton(
//               onPressed: () {
//                 // Define your action here
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.pinkAccent, // Button color
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(30),
//                 ),
//                 padding: const EdgeInsets.symmetric(vertical: 15),
//               ),
//               child: const Center(
//                 child: Text(
//                   "Start your self exam",
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }