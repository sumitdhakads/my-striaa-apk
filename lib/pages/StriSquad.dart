import 'package:flutter/material.dart';
import 'package:striaa/pages/StriBlog.dart';
import 'package:striaa/utils/app_utils.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/CustomAppbar.dart';
import 'package:striaa/widgets/SmallButtton.dart';
import 'package:striaa/widgets/image.dart';

class StriSquad extends StatelessWidget {
  const StriSquad({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: CustomAppbar(
          title: "StriSquad",
          action: Smallbuttton(
            text: "Post",
            textColor: Colors.white,
            color: ColorUtil.primaryColor,
            onPressed: () {},
          ),
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
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: leftRightAppPadding),
          child: Column(
            children: [
              SizedBox(height: 30),

              // Post card 1
              postCard(context),
              SizedBox(height: 15),

              // Post card 2
              postCard(context),
              SizedBox(height: 15),

              // Post card 3
              postCard(context),
              SizedBox(height: 15),

              // Post card 4
              postCard(context),
              SizedBox(height: 15),

              // Post card 5
              postCard(context),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  // Widget for creating post cards
  Widget postCard(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => StriBlog()),
        );
      },
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Placeholder text for post content
            Text(
              "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 10),

            // Date
            Text(
              "30 Dec, 2023",
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 10),

            // Comments and Likes buttons
            Row(
              children: [
                Icon(Icons.comment_outlined, size: 18, color: Colors.grey),
                SizedBox(width: 5),
                Text(
                  "Comments",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(width: 20),
                Icon(Icons.thumb_up_alt_outlined, size: 18, color: Colors.grey),
                SizedBox(width: 5),
                Text(
                  "Likes",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:striaa/pages/StriBlog.dart';
// import 'package:striaa/utils/app_utils.dart';
// import 'package:striaa/utils/color_util.dart';
// import 'package:striaa/utils/image_util.dart';
// import 'package:striaa/widgets/CustomAppbar.dart';
// import 'package:striaa/widgets/SmallButtton.dart';
// import 'package:striaa/widgets/image.dart';
//
// class StriSquad extends StatelessWidget {
//   const StriSquad({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         title: CustomAppbar(
//           title: "StriSquad",
//           action: Smallbuttton(
//               text: "Post",
//               textColor: Colors.white,
//               color: ColorUtil.primaryColor,
//               onPressed: () {}),
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
//       body: SingleChildScrollView(
//         child: Container(
//           padding: EdgeInsets.symmetric(horizontal: leftRightAppPadding),
//           child: Column(
//             children: [
//               SizedBox(height: 30,),
//               InkWell(
//                 onTap: (){
//                   Navigator.push(context, MaterialPageRoute(builder: (context) => StriBlog()));
//                 },
//                 child: Container(
//                   height: 120,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(15),
//                     image: DecorationImage(
//                       image: AssetImage(ImageUtil.squad1),
//                       fit: BoxFit.cover
//                     )
//                   ),
//                 ),
//               ),
//               SizedBox(height: 15,),
//               InkWell(
//                 onTap: (){
//                   Navigator.push(context, MaterialPageRoute(builder: (context) => StriBlog()));
//                 },
//                 child: Container(
//                   height: 120,
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(15),
//                       image: DecorationImage(
//                           image: AssetImage(ImageUtil.squad2),
//                           fit: BoxFit.cover
//                       )
//                   ),
//                 ),
//               ),
//               SizedBox(height: 15,),
//               InkWell(
//                 onTap: (){
//                   Navigator.push(context, MaterialPageRoute(builder: (context) => StriBlog()));
//                 },
//                 child: Container(
//                   height: 120,
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(15),
//                       image: DecorationImage(
//                           image: AssetImage(ImageUtil.squad2),
//                           fit: BoxFit.cover
//                       )
//                   ),
//                 ),
//               ),
//               SizedBox(height: 15,),
//               InkWell(
//                 onTap: (){
//                   Navigator.push(context, MaterialPageRoute(builder: (context) => StriBlog()));
//                 },
//                 child: Container(
//                   height: 120,
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(15),
//                       image: DecorationImage(
//                           image: AssetImage(ImageUtil.squad3),
//                           fit: BoxFit.cover
//                       )
//                   ),
//                 ),
//               ),
//               SizedBox(height: 15,),
//               InkWell(
//                 onTap: (){
//                   Navigator.push(context, MaterialPageRoute(builder: (context) => StriBlog()));
//                 },
//                 child: Container(
//                   height: 120,
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(15),
//                       image: DecorationImage(
//                           image: AssetImage(ImageUtil.squad4),
//                           fit: BoxFit.fitWidth
//                       )
//                   ),
//                 ),
//               ),
//               SizedBox(height: 30,),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
