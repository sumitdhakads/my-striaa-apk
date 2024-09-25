import 'package:flutter/material.dart';
import 'package:striaa/pages/RedeemRewardsPage.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/SmallButtton.dart';
import 'package:striaa/widgets/image.dart';

class Bookmyshow extends StatelessWidget {
  const Bookmyshow({super.key});

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
            height: 95,
            width: 95,
            child: ImageWidget(
              image: ImageUtil.place,
            ),
          ),
          SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Book my Show',
                style: FontUtil.font14B(),
              ),
              Text(
                'Sed ut perspis unde omnis is.',
                style: FontUtil.font12N(color: ColorUtil.textLightGrey ),
              ),
              SizedBox(height: 14,),
              Smallbuttton(text: "Redeem", color: Colors.black, onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => RedeemRewardsPage()));
              },textColor: Colors.white,
                verpadding: 6,horpadding: 10,)
            ],
          ),
        ],
      ),
    );
  }
}
