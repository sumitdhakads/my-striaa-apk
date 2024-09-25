import 'package:flutter/material.dart';
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
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            height: 90,
            width: 90,
            child: ImageWidget(
              image: image,
            ),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Dr. $name',
                style: FontUtil.font14SB(),
              ),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.orange, size: 16),
                  Text(
                    ' 4.5 (20 reviews)  |  ',
                    style: FontUtil.font12N(color: ColorUtil.textLightGrey),
                  ),
                  Icon(Icons.location_on,color: Colors.black,size: 14,),
                  Text(
                    '2 KM',
                    style: FontUtil.font12N(color: ColorUtil.textLightGrey),
                  ),
                ],
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Doctordetail()));
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 8),
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
                  ),
                  SizedBox(width: 8,),
                  Container(
                    width: 40,  // Adjust the size as needed
                    height: 40, // Adjust the size as needed
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.grey, // Border color
                        width: 0.7,         // Border width
                      ),
                    ),
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: ImageWidget(
                        image: ImageUtil.callpng,
                      )
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
