import 'package:flutter/material.dart';
import 'package:striaa/pages/EditProfile.dart';
import 'package:striaa/pages/FaqOne.dart';
import 'package:striaa/pages/Privacy&Policy.dart';
import 'package:striaa/pages/Terms&Condition.dart';
import 'package:striaa/pages/language_selection.dart';
import 'package:striaa/pages/login_Page.dart';
import 'package:striaa/pages/newLanguage.dart';
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
      backgroundColor: Colors.pink[50], // Light pink background color
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: CustomAppbar(
          title: "My Profile",
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
        child: Column(
          children: [
            const SizedBox(height: 20), // Spacing

            // Profile picture and name
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.grey[300],
              child: Icon(
                Icons.person,
                size: 60,
                color: Colors.grey[700],
              ),
            ),
            const SizedBox(height: 10), // Spacing
            const Text(
              'Maria J. Allison',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20), // Spacing

            Divider(
              color: Colors.grey[300],
              thickness: 1,
            ),

            // The rest of the scrollable content
            ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                // List of options
                profileOption(
                  icon: Icons.person_outline,
                  label: "Edit Profile",
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => EditProfile()));
                  },
                ),
                profileOption(
                  icon: Icons.language,
                  label: "Select Language",
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NewLanguage()));
                  },
                ),
                profileOption(
                  icon: Icons.card_giftcard,
                  label: "Reward Points",
                  onTap: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => ));
                  },
                ),
                profileOption(
                  icon: Icons.lock_outline,
                  label: "Change Password",
                  onTap: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => ));
                  },
                ),
                profileOption(
                  icon: Icons.notifications_outlined,
                  label: "Enable/ Disable Notification",
                  trailing: Switch(
                    value: isNotificationEnabled,
                    onChanged: (val) {
                      setState(() {
                        isNotificationEnabled = val; // Update the switch state
                      });
                    },
                    activeColor: Colors.pink,
                  ),
                  onTap: () {},
                ),
                profileOption(
                  icon: Icons.help_outline,
                  label: "FAQ",
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => Faqone()));
                  },
                ),
                profileOption(
                  icon: Icons.description_outlined,
                  label: "Terms and Conditions",
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => TermsCondition()));
                  },
                ),
                profileOption(
                  icon: Icons.privacy_tip_outlined,
                  label: "Privacy Policy",
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => PrivacyPolicy()));
                  },
                ),
                profileOption(
                  icon: Icons.logout,
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
    required IconData icon,
    required String label,
    required VoidCallback onTap,
    Widget? trailing,
    Color labelColor = Colors.black,
  }) {
    return ListTile(
      leading: CircleAvatar(
          backgroundColor: ColorUtil.primaryColor,
          child: Icon(icon, color: Colors.white)),
      title: Text(
        label,
        style: TextStyle(
          color: labelColor,
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: trailing ??
          const Icon(
            Icons.arrow_forward_ios,
            size: 16,
            color: Colors.grey,
          ),
      onTap: onTap,
    );
  }
}
