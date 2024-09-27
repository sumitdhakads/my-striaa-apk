import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:striaa/pages/AllDoctor.dart';
import 'package:striaa/widgets/togglebutton.dart';
import 'package:striaa/utils/app_utils.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/CustomAppbar.dart';
import 'package:striaa/widgets/DoctorCard.dart';
import 'package:striaa/widgets/PostContainer.dart';
import 'package:striaa/widgets/dash.dart';
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
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: CustomAppbar(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: leftRightAppPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                    width: appwidth(context) / 2.475,
                    child: Stack(
                      children: [
                        Container(
                          width: 46,
                          decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.white),
                            shape: BoxShape.circle,
                          ),
                          child: ImageWidget(
                            image: ImageUtil.dr1,
                          ),
                        ),
                        Positioned(
                          left: 34,
                          child: Container(
                            width: 46,
                            decoration: BoxDecoration(
                              border: Border.all(width: 2, color: Colors.white),
                              shape: BoxShape.circle,
                            ),
                            child: ImageWidget(
                              image: ImageUtil.dr2,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 68,
                          child: Container(
                            width: 46,
                            decoration: BoxDecoration(
                              border: Border.all(width: 2, color: Colors.white),
                              shape: BoxShape.circle,
                            ),
                            child: ImageWidget(
                              image: ImageUtil.dr3,
                            ),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          child: Container(
                            width: 46,
                            decoration: BoxDecoration(
                              border: Border.all(width: 2, color: Colors.white),
                              shape: BoxShape.circle,
                            ),
                            child: ImageWidget(
                              image: ImageUtil.dr1,
                            ),
                          ),
                        )
                      ],
                    )),
              ),
              SizedBox(height: 15),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'According to the response given by you could, ',
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
                    SizedBox(
                      width: 10,
                    ),
                    CustomToggleButton(),
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
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AllDoctor()));
                      },
                      child: Text(
                        "See all",
                        style: FontUtil.font14N(color: ColorUtil.primaryColor),
                      ))
                ],
              ),
              SizedBox(height: 20),
              DoctorCard(
                image: ImageUtil.dr,
                name: "Julie Colvin",
              ),
              SizedBox(
                height: 15,
              ),
              DoctorCard(
                name: "Julie Colvin",
                image: ImageUtil.newdr2,
              ),
              SizedBox(
                height: 15,
              ),
              DoctorCard(
                name: "Julie Colvin",
                image: ImageUtil.newdr3,
              ),
              SizedBox(
                height: 25,
              ),
              DashedLine(width: appwidth(context)),
              SizedBox(
                height: 25,
              ),
              Text(
                "Related Articles",
                style: FontUtil.font16SB(),
              ),
              SizedBox(height: 20,),
              Postcontainer(
                image: ImageUtil.one,
                text: "Sed ut perspicitis iste natus unde error..",
              ),
            SizedBox(height: 15,),
              Postcontainer(
                image: ImageUtil.two,
                text: "Sed ut perspicitis iste natus unde error..",
              ),
              SizedBox(height: 30,),
            ],
          ),
        ),
      ),
    );
  }
}
