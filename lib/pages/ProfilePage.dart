import 'package:flutter/material.dart';
import 'package:striaa/pages/ChangePassword.dart';
import 'package:striaa/pages/EditProfile.dart';
import 'package:striaa/pages/FaqOne.dart';
import 'package:striaa/pages/Privacy&Policy.dart';
import 'package:striaa/pages/Reward.dart';
import 'package:striaa/pages/Terms&Condition.dart';
import 'package:striaa/pages/language_selection.dart';
import 'package:striaa/pages/login_Page.dart';
import 'package:striaa/pages/newLanguage.dart';
import 'package:striaa/utils/app_utils.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/widgets/dash.dart';
import 'package:striaa/widgets/togglebutton.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/CustomAppbar.dart';
import 'package:striaa/widgets/image.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isNotificationEnabled = true; // State variable to hold the switch value

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: "My Profile",
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20), // Spacing

            // Profile picture and name
            Container(
              height: 120,
              width: 120,
             decoration: BoxDecoration(
               color: Colors.grey[300],
               shape: BoxShape.circle,
               image: DecorationImage(
                 image: AssetImage(ImageUtil.personpng),
                 fit:BoxFit.cover,
               )
             ),
            ),
            const SizedBox(height: 10), // Spacing
             Text(
              'Maria J. Allison',
              style: FontUtil.font20SB()
            ),
            const SizedBox(height: 30), // Spacing
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: DashedLine(width: appwidth(context)),
            ),
            SizedBox(height: 20,),

            // The rest of the scrollable content
            ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                // List of options
                profileOption(
                  icon: ImageUtil.profilesvg,
                  label: "Edit Profile",
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => EditProfile()));
                  },
                ),
                profileOption(
                  icon: ImageUtil.languagesvg,
                  label: "Select Language",
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NewLanguage()));
                  },
                ),
                profileOption(
                  icon: ImageUtil.rewardsvg,
                  label: "Reward Points",
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Reward()));
                  },
                ),
                profileOption(
                  icon: ImageUtil.locksvg,
                  label: "Change Password",
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ChangePassword()));
                  },
                ),
                profileOption(
                  icon: ImageUtil.bellsvg,
                  label: "Enable/ Disable Notification",
                  trailing: CustomToggleButton(),
                  onTap: () {},
                ),
                profileOption(
                  icon: ImageUtil.faqsvg,
                  label: "FAQ",
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => Faqone()));
                  },
                ),
                profileOption(
                  icon: ImageUtil.termsvg,
                  label: "Terms and Conditions",
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => TermsCondition()));
                  },
                ),
                profileOption(
                  icon: ImageUtil.privacysvg,
                  label: "Privacy Policy",
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => PrivacyPolicy()));
                  },
                ),
                profileOption(
                  icon: ImageUtil.logoutsvg,
                  label: "Log Out",
                  labelColor: Colors.red,
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => Login()));
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Helper function to create a profile option row
  Widget profileOption({
    required String icon,
    required String label,
    required VoidCallback onTap,
    Widget? trailing,
    Color labelColor = Colors.black,
  }) {
    return ListTile(
      leading: Container(
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: ColorUtil.primaryColor,
        ),
        child: SvgIcon(
          icon: icon,
        ),
      ),
      title: Text(
        label,
        style: FontUtil.font16M(color: labelColor)
      ),
      trailing: trailing ??
          SvgIcon(icon: ImageUtil.forwardsvg),
      onTap: onTap,
    );
  }
}
