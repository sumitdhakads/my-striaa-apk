import 'package:flutter/material.dart';
import 'package:striaa/pages/get_started.dart';
import 'package:striaa/utils/app_utils.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/widgets/CustomAppbar.dart';
import 'package:striaa/widgets/button.dart';
import 'package:striaa/widgets/dash.dart';

class NewLanguage extends StatefulWidget {
  const NewLanguage({super.key});

  @override
  State<NewLanguage> createState() => _NewLanguageState();
}

class _NewLanguageState extends State<NewLanguage> {


  int selectedLang = 0;


  List<Map<String, dynamic>> languages = [
    { "name": "English", "lang" : ""},
    { "name": "Hindi", "lang" : "(हिंदी)"},
    { "name": "Bengali", "lang" : "(বাংলা)"},
    { "name": "Marathi", "lang" : "(मराठी)"},
    { "name": "Gujarati", "lang" : "(ગુજરાતી)"},
    { "name": "Urdu", "lang" : "(اردو)"},
    { "name": "Tamil", "lang" : "(தமிழ்)"},
    { "name": "Telugu", "lang" : "(తెలుగు)"},
    { "name": "Malayalam", "lang" : "(മലയാളം)"},
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: CustomAppbar(
          title: "Select Language",
        ),
        bottomNavigationBar: Container(
          height: 60,
          margin: EdgeInsets.all(padding16),
          child: ButtonWidget(onPressed: (){
            Navigator.pop(context);
          },
            color: Theme.of(context).primaryColor,

            text: 'Continue',
          ),
        ),
        body: ListView.builder(
            itemCount: languages.length,
            itemBuilder: (context, index){
              return Column(
                children: [
                  if(selectedLang == index)
                    DashedLine(
                        width: appwidth(context),
                        dashWidth: 5.0,
                        color: ColorUtil.textLightGrey.withOpacity(0.5)
                    ),
                  InkWell(
                    onTap: (){
                      selectedLang = index;
                      setState(() {  });
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical : index == selectedLang ? padding16 : 0),
                      padding: EdgeInsets.symmetric(horizontal: leftRightAppPadding, vertical: padding16),
                      width: appwidth(context),
                      child: Row(
                        children: [
                          Text(languages[index]['name'],
                              style: index == selectedLang
                                  ? FontUtil.font16SB()
                                  : FontUtil.font16N()),
                          Text("  ${languages[index]['lang']}",
                              style: FontUtil.font14N(color: ColorUtil.textLightGrey)),
                          const Spacer(),
                          if(index == selectedLang)
                            CircleAvatar(
                              radius: 10,
                              backgroundColor: Theme.of(context).primaryColor,
                              child: const Icon(Icons.done_rounded, size: 12,color: Colors.white),
                            )
                        ],
                      ),
                    ),
                  ),
                  if(selectedLang == index)
                    DashedLine(
                        width: appwidth(context),
                        dashWidth: 5.0,
                        color: ColorUtil.textLightGrey.withOpacity(0.5)
                    )
                ],
              );
            })
    );
  }
}