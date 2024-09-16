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
              onPressed: () {}),
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
              SizedBox(height: 30,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => StriBlog()));
                },
                child: Container(
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage(ImageUtil.squad1),
                      fit: BoxFit.cover
                    )
                  ),
                ),
              ),
              SizedBox(height: 15,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => StriBlog()));
                },
                child: Container(
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: AssetImage(ImageUtil.squad2),
                          fit: BoxFit.cover
                      )
                  ),
                ),
              ),
              SizedBox(height: 15,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => StriBlog()));
                },
                child: Container(
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: AssetImage(ImageUtil.squad2),
                          fit: BoxFit.cover
                      )
                  ),
                ),
              ),
              SizedBox(height: 15,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => StriBlog()));
                },
                child: Container(
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: AssetImage(ImageUtil.squad3),
                          fit: BoxFit.cover
                      )
                  ),
                ),
              ),
              SizedBox(height: 15,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => StriBlog()));
                },
                child: Container(
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: AssetImage(ImageUtil.squad4),
                          fit: BoxFit.fitWidth
                      )
                  ),
                ),
              ),
              SizedBox(height: 30,),
            ],
          ),
        ),
      ),
    );
  }
}
