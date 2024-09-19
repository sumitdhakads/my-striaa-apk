import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:striaa/pages/SoS_Setup_Page.dart';
import 'package:striaa/pages/self_checkup.dart';
import 'package:striaa/utils/app_utils.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/BlogContainer.dart';
import 'package:striaa/widgets/PostContainer.dart';
import 'package:striaa/widgets/SmallButtton.dart';
import 'package:striaa/widgets/dash.dart';
import 'package:striaa/widgets/image.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            expandedHeight: 260,
            backgroundColor: ColorUtil.secondaryColor,
            floating: false,
            pinned: true, // Keeps the AppBar pinned at the top after scrolling
            flexibleSpace: LayoutBuilder(
              builder: (context, constraints) {
                // To determine how much the AppBar has been scrolled
                var top = constraints.biggest.height;
                bool isCollapsed = top <= 100;

                return FlexibleSpaceBar(
                  title: isCollapsed
                      ? Text(
                          "Hello, Maria Allison!",
                          style:
                              FontUtil.font20B(color: ColorUtil.primaryColor),
                        )
                      : null, // Show title when collapsed
                  centerTitle: true,
                  background: ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      bottom: Radius.circular(30), // Rounded bottom corners
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: ColorUtil.primaryColor,
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: leftRightAppPadding),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 40),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // App Logo
                              ImageWidget(
                                image: ImageUtil
                                    .streeName, // Replace with logo asset
                                // height: 54,
                                width: 120,
                              ),
                              // Notification Bell Icon
                              Container(
                                // height: 44,
                                // width: 44,
                                padding: const EdgeInsets.all(7),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.white, // White border color
                                    width:
                                        0.6, // Border width (adjust as needed)
                                  ),
                                ),
                                child: SvgIcon(
                                  icon: ImageUtil
                                      .notificationbell, // Notification bell icon
                                  height: 20,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          // Greeting and Name (only visible before collapsing)
                          if (!isCollapsed) ...[
                            Text('Hello,',
                                style: FontUtil.font14N(color: Colors.white)),
                            Text('Maria Allison!',
                                style: FontUtil.font28B(color: Colors.white)),
                          ],
                          const SizedBox(height: 20),
                          // Date Information
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            padding: const EdgeInsets.all(12),
                            child: Row(
                              children: [
                               CircleAvatar(
                                    radius: 30,
                                    backgroundColor: Colors.white,
                                    child: Column(
                                      children: [
                                        const SizedBox(height: 7),
                                        Text('25',
                                            textAlign: TextAlign.center,
                                            style: FontUtil.font18B(
                                                color: ColorUtil.primaryColor)),
                                        Text('Dec',
                                            textAlign: TextAlign.center,
                                            style: FontUtil.font14N()),
                                      ],
                                    ),
                                  ),
                                const SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Upcoming Date of Check up',
                                      style:
                                          FontUtil.font14B(color: Colors.white),
                                    ),
                                    Text('Previous Date  Check up: 20 Dec',
                                        style: FontUtil.font14N(
                                            color: Colors.white)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: leftRightAppPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 30),
                  Container(
                    padding: const EdgeInsets.only(right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 20),
                            Text("Self Checkup", style: FontUtil.font20B()),
                            Text("Lore ipsum dolor",
                                style: FontUtil.font14N(
                                    color: ColorUtil.textLightGrey)),
                            const SizedBox(height: 15),
                            Smallbuttton(
                              text: "Test Now",
                              color: Colors.black,
                              onPressed: () {
                              },
                            ),
                            const SizedBox(height: 25),
                          ],
                        ),
                        Spacer(),
                        Expanded(
                          flex: 4,
                          child: Image.asset(ImageUtil.selfcheckup))
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),
                  DashedLine(width: MediaQuery.of(context).size.width),
                  const SizedBox(height: 25),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                    decoration: BoxDecoration(
                      color: ColorUtil.primaryColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Please set up SOS",
                              style: FontUtil.font20B(color: Colors.white),
                            ),
                            Text(
                              "Lorem ipsum dolor sit amet.",
                              style: FontUtil.font14N(color: Colors.white),
                            ),
                          ],
                        ),
                        Smallbuttton(
                          text: "Set up",
                          color: Colors.black,
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const SosSetupPage()));
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  InkWell(
                    onTap: (){
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => ));
                    },
                    child: Postcontainer(
                      image: ImageUtil.one,
                      text: "Sed ut perspicitis iste natus unde error..",
                    ),
                  ),
                  const SizedBox(height: 15),
                  InkWell(
                    onTap: (){
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => const ));
                    },
                    child: Postcontainer(
                      image: ImageUtil.two,
                      text: "Sed ut perspicitis iste natus unde error..",
                    ),
                  ),
                  const SizedBox(height: 15),
                  InkWell(
                    onTap: (){
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => ));
                    },
                    child: Blogcontainer(
                      image: ImageUtil.three,
                      date: "18 Dec, 2023",
                      title: "Sed ut perspiciatis unde",
                      subtitle: "Carter Street Fairview Heights...",
                      btntext: "Interested",
                    ),
                  ),
                  const SizedBox(height: 15),
                  InkWell(
                    onTap: (){
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => ));
                    },
                    child: Blogcontainer(
                      image: ImageUtil.four,
                      date: "18 Dec, 2023",
                      title: "Sed ut perspiciatis unde",
                      subtitle: "Carter Street Fairview Heights...",
                      btntext: "Interested",
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => ));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Left column for text
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Rewards Points", style: FontUtil.font20B()),
                              Text(
                                "Sed ut perspiciatis unde omnis iste natus error sit voluptatem.",
                                style: FontUtil.font12N(
                                    color: ColorUtil.textLightGrey),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                        // Image points container
                        Container(
                          width:
                              175, // Set a fixed width or use AspectRatio if needed
                          child: Image.asset(
                            ImageUtil.points,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 200,
                    child: Stack(
                      children: [
                        Container(
                          height: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            gradient: const LinearGradient(
                              colors: [
                                Colors.pinkAccent, // Starting color
                                Colors.orange, // Ending color
                              ],
                              begin: Alignment.centerLeft, // Start from the left
                              end: Alignment.centerRight, // End at the right
                            ),
                          ),
                          child: Stack(
                            children: [
                              Container(
                                padding: const EdgeInsets.only(left: 20, top: 15, bottom: 15),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Let's be Aware!",
                                            style: GoogleFonts.kalam(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 30,
                                              color: Colors.white,
                                            ),
                                          ),
                                          const SizedBox(height: 10),
                                          Text(
                                            "Lorem ipsum dolor sit amet,\n consectetur adipiscing elit aliqua.",
                                            style: FontUtil.font12N(color: Colors.white),
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          const SizedBox(height: 10),
                                          Smallbuttton(
                                            text: "Learn more",
                                            color: Colors.black,
                                            onPressed: () {},
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                right: 0,
                                bottom: 0,
                                top: 0,
                                child: Image.asset(
                                  ImageUtil.head,
                                  fit: BoxFit.cover, // Ensure the image fits within its container
                                ),
                              ),
                              Positioned(
                                right: 15,
                                bottom: 25,
                                top: 25,
                                child: Image.asset(
                                  ImageUtil.whiteaiid,
                                  fit: BoxFit.cover, // Ensure the image fits within its container
                                ),
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),

                  const SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.transparent,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: ImageWidget(
            image: ImageUtil.newbot,
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100)
        ),
        onPressed: (){
     // Navigator.push(context, MaterialPageRoute(builder: (context) => ));
        },
      ),
    );
  }
}
