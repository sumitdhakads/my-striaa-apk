import 'package:flutter/material.dart';
import 'package:striaa/pages/DoctorChat.dart';
import 'package:striaa/pages/StriaaPage.dart';
import 'package:striaa/utils/app_utils.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/dash.dart';
import 'package:striaa/widgets/image.dart';

class Doctordetail extends StatelessWidget {
  const Doctordetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // SliverAppBar for the doctor's image and back button
          SliverAppBar(
            expandedHeight: 289.0, // Height of the doctor image
            pinned: true, // Pin the AppBar when it collapses
            backgroundColor:
                ColorUtil.secondaryColor, // Background color when collapsed
            flexibleSpace: FlexibleSpaceBar(
              background: InkWell(
                onTap: () {
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => StriaaPage()),(route) => false);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(35),
                      bottomRight: Radius.circular(35),
                    ),
                    image: DecorationImage(
                      image: AssetImage(ImageUtil.drjullie),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              collapseMode: CollapseMode.parallax,
            ),
            // Back button in the AppBar
            leadingWidth: 80,

            leading: IconButton(
              icon: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 0.5, color: Color(0xFF6A6C72)),
                ),
                child: SvgIcon(icon: ImageUtil.leftblacksvg),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),

          // SliverList for the content after the image
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SizedBox(height: 20),

                // Doctor's Info (Name, Rating, Icons)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Doctor's Name and Rating
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Dr. Julie Colvin",
                                style: FontUtil.font24SB(),
                              ),
                              SizedBox(height: 8),
                              Row(
                                children: [
                                  SvgIcon(icon: ImageUtil.star),
                                  SizedBox(width: 5),
                                  Text(
                                    "4.5 (20 reviews)",
                                    style: FontUtil.font14N(
                                        color: ColorUtil.textLightGrey),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // Call and Message Icons
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 11, horizontal: 11),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: ColorUtil.primaryColor,
                                ),
                                child: SvgIcon(icon: ImageUtil.whitephone),
                              ),
                              SizedBox(width: 10),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => DoctorChat(
                                              drname: "Dr. Julie Colvin",
                                              drimage: ImageUtil.dr1)));
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 11, horizontal: 11),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: ColorUtil.primaryColor,
                                  ),
                                  child: SvgIcon(icon: ImageUtil.whitecomment),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 25),
                      DashedLine(width: appwidth(context)),
                      SizedBox(height: 25),

                      // About Section
                      Text(
                        "About",
                        style: FontUtil.font16SB(),
                      ),
                      SizedBox(height: 12),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, "
                        "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                        style: FontUtil.font14N(color: ColorUtil.textLightGrey),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "• Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.",
                        style: FontUtil.font14N(color: ColorUtil.textLightGrey),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "• Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
                        style: FontUtil.font14N(color: ColorUtil.textLightGrey),
                      ),
                      SizedBox(height: 30),

                      // Location Section
                      Text(
                        "Location",
                        style: FontUtil.font16SB(),
                      ),
                      SizedBox(height: 12),
                      // Location Map
                      Container(
                        height: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage(ImageUtil
                                .locationimage), // Placeholder for map preview image
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.location_pin,
                            color: ColorUtil.primaryColor,
                            size: 40,
                          ),
                        ),
                      ),
                      SizedBox(height: 250),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:striaa/pages/StriaaPage.dart';
// import 'package:striaa/utils/app_utils.dart';
// import 'package:striaa/utils/color_util.dart';
// import 'package:striaa/utils/font_util.dart';
// import 'package:striaa/utils/image_util.dart';
// import 'package:striaa/widgets/dash.dart';
// import 'package:striaa/widgets/image.dart';
//
// class Doctordetail extends StatelessWidget {
//   const Doctordetail({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final double statusBarHeight = MediaQuery.of(context).padding.top; // Get the height of the status bar
//
//     return Scaffold(  // Background to match design
//       body: Stack(
//         children: [
//           // Scrollable content
//           ListView(
//             padding: EdgeInsets.only(top: 0),
//             children: [
//               // Image container
//               InkWell(
//                 onTap: (){
//                   Navigator.push(context, MaterialPageRoute(builder: (context) => StriaaPage()));
//                 },
//                 child: Container(
//                   height: 300,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.only(
//                       bottomLeft: Radius.circular(35),
//                       bottomRight: Radius.circular(35),
//                     ),
//                     image: DecorationImage(
//                       image: AssetImage(ImageUtil.drjullie),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 20),
//
//               // Doctor's Info (Name, Rating, Icons)
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 15),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         // Doctor's Name and Rating
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                                 "Dr. Julie Colvin",
//                                 style: FontUtil.font24SB()
//                             ),
//                             SizedBox(height: 8),
//                             Row(
//                               children: [
//                                SvgIcon(icon: ImageUtil.star),
//                                 SizedBox(width: 5),
//                                 Text(
//                                   "4.5 (20 reviews)",
//                                   style: FontUtil.font14N(color: ColorUtil.textLightGrey),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                         // Call and Message Icons
//                         Row(
//                           children: [
//                             Container(
//                               padding: EdgeInsets.symmetric(vertical: 11,horizontal: 11),
//                               decoration: BoxDecoration(
//                               shape: BoxShape.circle,
//                                 color: ColorUtil.primaryColor
//                               ),
//                               child: SvgIcon(
//                                   icon: ImageUtil.whitephone,
//                                 ),
//                             ),
//
//                             SizedBox(width: 10),
//                             Container(
//                               padding: EdgeInsets.symmetric(vertical: 11,horizontal: 11),
//                               decoration: BoxDecoration(
//                                   shape: BoxShape.circle,
//                                   color: ColorUtil.primaryColor
//                               ),
//                               child: SvgIcon(
//                                 icon: ImageUtil.whitecomment,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                     SizedBox(height: 25),
//                     DashedLine(width: appwidth(context)),
//                     SizedBox(height: 25,),
//                     // About Section
//                     Text(
//                       "About",
//                       style:  FontUtil.font16SB(),
//                     ),
//                     SizedBox(height: 12),
//                     Text(
//                       "Lorem ipsum dolor sit amet, consectetur adipiscing elit, "
//                           "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
//                       style:  FontUtil.font14N(color: ColorUtil.textLightGrey),
//                     ),
//                     SizedBox(height: 10),
//                     Text(
//                       "• Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.",
//                       style:  FontUtil.font14N(color: ColorUtil.textLightGrey),
//                     ),
//                     SizedBox(height: 10),
//                     Text(
//                         "• Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
//                         style:  FontUtil.font14N(color: ColorUtil.textLightGrey)
//                     ),
//                     SizedBox(height: 30),
//
//                     // Location Section
//                     Text(
//                         "Location",
//                         style:  FontUtil.font16SB()
//                     ),
//                     SizedBox(height: 12),
//                     // Location Map
//                     Container(
//                       height: 180,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(15),
//                         image: DecorationImage(
//                           image: AssetImage(ImageUtil.locationimage),  // Placeholder for map preview image
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                       child: Center(
//                         child: Icon(Icons.location_pin, color: ColorUtil.primaryColor, size: 40),
//                       ),
//                     ),
//                     SizedBox(height: 25,),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//           // Static Back Button
//           Positioned(
//             top: statusBarHeight + 10, // Position the back button below the status bar
//             left: 15,
//             child: InkWell(
//               onTap: () {
//                 Navigator.pop(context);
//               },
//               child: Container(
//                 padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   border: Border.all(width: 0.5,color: Color(0xFF6A6C72))
//                 ),
//                 child: SvgIcon(
//                   icon: ImageUtil.leftblacksvg,
//                 ),
//               )
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

//
// import 'package:flutter/material.dart';
// import 'package:striaa/pages/StriaaPage.dart';
// import 'package:striaa/utils/app_utils.dart';
// import 'package:striaa/utils/color_util.dart';
// import 'package:striaa/utils/font_util.dart';
// import 'package:striaa/utils/image_util.dart';
// import 'package:striaa/widgets/dash.dart';
// import 'package:striaa/widgets/image.dart';
//
// class Doctordetail extends StatefulWidget {
//   const Doctordetail({super.key});
//
//   @override
//   _DoctordetailState createState() => _DoctordetailState();
// }
//
// class _DoctordetailState extends State<Doctordetail> {
//   double _scrollOffset = 0.0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: NotificationListener<ScrollNotification>(
//         onNotification: (scrollNotification) {
//           if (scrollNotification is ScrollUpdateNotification) {
//             setState(() {
//               _scrollOffset = scrollNotification.metrics.pixels;
//             });
//           }
//           return true;
//         },
//         child: CustomScrollView(
//           slivers: [
//             // SliverAppBar for the doctor's image and back button
//             SliverAppBar(
//               expandedHeight: 300.0, // Height of the doctor image
//               pinned: true, // Pin the AppBar when it collapses
//               backgroundColor: ColorUtil.secondaryColor,
//               flexibleSpace: FlexibleSpaceBar(
//                 background: InkWell(
//                   onTap: () {
//                     Navigator.push(
//                         context, MaterialPageRoute(builder: (context) => StriaaPage()));
//                   },
//                   child: Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.only(
//                         bottomLeft: Radius.circular(35),
//                         bottomRight: Radius.circular(35),
//                       ),
//                       image: DecorationImage(
//                         image: AssetImage(ImageUtil.drjullie),
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ),
//                 ),
//                 collapseMode: CollapseMode.parallax,
//               ),
//               // Back button in the AppBar
//               leading: Padding(
//                 padding: const EdgeInsets.only(left: 10.0, top: 8.0),
//                 child: Container(
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: _scrollOffset > 0
//                         ? Colors.white // White background when scrolling
//                         : Colors.transparent, // Transparent background when at the top
//                     border: Border.all(
//                       width: 0.5,
//                       color: _scrollOffset > 0 ? Colors.grey : Color(0xFF6A6C72), // Darker when scrolled
//                     ),
//                   ),
//                   child: IconButton(
//                     icon: SvgIcon(
//                       icon: _scrollOffset > 0
//                           ? ImageUtil.leftblacksvg // Black icon when scrolling
//                           : ImageUtil.leftwhite, // White icon when not scrolling
//                     ),
//                     onPressed: () {
//                       Navigator.pop(context);
//                     },
//                   ),
//                 ),
//               ),
//             ),
//
//             // SliverList for the content after the image
//             SliverList(
//               delegate: SliverChildListDelegate(
//                 [
//                   SizedBox(height: 20),
//
//                   // Doctor's Info (Name, Rating, Icons)
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 15),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             // Doctor's Name and Rating
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   "Dr. Julie Colvin",
//                                   style: FontUtil.font24SB(),
//                                 ),
//                                 SizedBox(height: 8),
//                                 Row(
//                                   children: [
//                                     SvgIcon(icon: ImageUtil.star),
//                                     SizedBox(width: 5),
//                                     Text(
//                                       "4.5 (20 reviews)",
//                                       style: FontUtil.font14N(color: ColorUtil.textLightGrey),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                             // Call and Message Icons
//                             Row(
//                               children: [
//                                 Container(
//                                   padding: EdgeInsets.symmetric(
//                                       vertical: 11, horizontal: 11),
//                                   decoration: BoxDecoration(
//                                     shape: BoxShape.circle,
//                                     color: ColorUtil.primaryColor,
//                                   ),
//                                   child: SvgIcon(icon: ImageUtil.whitephone),
//                                 ),
//                                 SizedBox(width: 10),
//                                 Container(
//                                   padding: EdgeInsets.symmetric(
//                                       vertical: 11, horizontal: 11),
//                                   decoration: BoxDecoration(
//                                     shape: BoxShape.circle,
//                                     color: ColorUtil.primaryColor,
//                                   ),
//                                   child: SvgIcon(icon: ImageUtil.whitecomment),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                         SizedBox(height: 25),
//                         DashedLine(width: appwidth(context)),
//                         SizedBox(height: 25),
//
//                         // About Section
//                         Text(
//                           "About",
//                           style: FontUtil.font16SB(),
//                         ),
//                         SizedBox(height: 12),
//                         Text(
//                           "Lorem ipsum dolor sit amet, consectetur adipiscing elit, "
//                               "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
//                           style: FontUtil.font14N(color: ColorUtil.textLightGrey),
//                         ),
//                         SizedBox(height: 10),
//                         Text(
//                           "• Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.",
//                           style: FontUtil.font14N(color: ColorUtil.textLightGrey),
//                         ),
//                         SizedBox(height: 10),
//                         Text(
//                           "• Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
//                           style: FontUtil.font14N(color: ColorUtil.textLightGrey),
//                         ),
//                         SizedBox(height: 30),
//
//                         // Location Section
//                         Text(
//                           "Location",
//                           style: FontUtil.font16SB(),
//                         ),
//                         SizedBox(height: 12),
//                         // Location Map
//                         Container(
//                           height: 180,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(15),
//                             image: DecorationImage(
//                               image: AssetImage(ImageUtil.locationimage),
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                           child: Center(
//                             child: Icon(
//                               Icons.location_pin,
//                               color: ColorUtil.primaryColor,
//                               size: 40,
//                             ),
//                           ),
//                         ),
//                         SizedBox(height: 25),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
