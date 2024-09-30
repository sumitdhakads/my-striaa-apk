import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:striaa/pages/DoctorDetail.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/image.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({super.key,required this.name,required this.image});

  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => Doctordetail()));
      },
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            SizedBox(
              height: 90,
              width: 90,
              child: ImageWidget(
                image: image,
              ),
            ),
            SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Dr. $name',
                  style: FontUtil.font14SB(),
                ),
                Row(
                  children: [
                    SvgIcon(icon: ImageUtil.star),
                    SizedBox(width: 1,),
                    Text(
                      ' 4.5 (20 reviews)  |  ',
                      style: FontUtil.font12N(color: ColorUtil.textLightGrey),
                    ),
                    Icon(Icons.location_on,color: Colors.black,size: 16,),
                    Text(
                      '2 KM',
                      style: FontUtil.font12N(color: ColorUtil.textLightGrey),
                    ),
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  children: [
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 6),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(23),
                          border: Border.all(
                            color: Colors.grey, // Border color
                            width: 0.7,         // Border width
                          ),
                        ),
                        child: Text("View Detail",style: FontUtil.font12N(),)
                      ),
                    SizedBox(width: 8,),
                    Container(
                      width: 30,  // Adjust the size as needed
                      height: 30, // Adjust the size as needed
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Color(0xFFC9CBD1), // Border color
                          width: 0.5,         // Border width
                        ),
                      ),
                      child: Container(
                        padding: EdgeInsets.all(7),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Color(0xFFC9CBD1), // Border color
                            width: 0.5 ,         // Border width
                          ),
                        ),
                          child: SvgIcon(
                            icon: ImageUtil.callsvg,
                          ),
                        ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
