import 'package:flutter/material.dart';
import 'package:striaa/pages/AllDoctor.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/CustomAppbar.dart';
import 'package:striaa/widgets/DoctorCard.dart';
import 'package:striaa/widgets/image.dart';

class DoctorConsult extends StatefulWidget {
  const DoctorConsult({super.key});

  @override
  State<DoctorConsult> createState() => _DoctorConsultState();
}

class _DoctorConsultState extends State<DoctorConsult> {
  bool isLocationEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF1F7), // Light pink background
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: CustomAppbar(
          leading: Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: CircleAvatar(
                  backgroundColor: Colors.white,
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
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text:
                  'According to the response given by you could, ',
                  style: FontUtil.font16SB(),
                  children: <TextSpan>[
                    TextSpan(
                      text: "feel a peanut size lump on your left breast",
                      style: FontUtil.font16SB(color: ColorUtil.primaryColor),
                    ),
                    TextSpan(
                      text:
                      ', under this circumstance we suggest that you should consult a doctor immediately.',
                      style: FontUtil.font16SB(),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'For any further assistance or help please chat with ',
                  style: FontUtil.font12N(color: ColorUtil.textLightGrey),
                  children: <TextSpan>[
                    TextSpan(
                      text: "Dr. Didi",
                      style: FontUtil.font12SB(),
                    ),
                    TextSpan(
                      text: ' or contact at ',
                      style: FontUtil.font12N(color: ColorUtil.textLightGrey),
                    ),
                    TextSpan(
                      text: '1800xxxxx',
                      style: FontUtil.font12SB(),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        "Please enable location so we can show nearby doctors",
                        style: FontUtil.font14N(color: ColorUtil.textLightGrey),
                      ),
                    ),
                    SizedBox(width: 10,),
                     Switch(
                        value: isLocationEnabled,
                        onChanged: (val) {
                          setState(() {
                            isLocationEnabled = val;
                          });
                        },
                        activeColor: ColorUtil.primaryColor,
                        inactiveThumbColor: Colors.white,
                        inactiveTrackColor: Colors.grey.withOpacity(0.4),
                      ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Top Suggestion of Doctors',
                    style: FontUtil.font16B(),
                  ),
                  InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => AllDoctor() ));
                      },
                      child: Text("See all",style: FontUtil.font14N(color: ColorUtil.primaryColor),))
                ],
              ),
              SizedBox(height: 20),
              DoctorCard(image: ImageUtil.dr,name: "Julie Colvin",),
              SizedBox(height: 15,),
              DoctorCard(name: "Julie Colvin",image: ImageUtil.newdr2,),
              SizedBox(height: 15,),
              DoctorCard(name: "Julie Colvin",image: ImageUtil.newdr3,),
              SizedBox(height: 15,),
              DoctorCard(name:  "Julie Colvin", image: ImageUtil.dr,),
              SizedBox(height: 30,),
            ],
          ),
        ),
      ),
    );
  }
}
