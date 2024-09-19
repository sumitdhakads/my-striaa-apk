import 'package:flutter/material.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';

class TileExpansion extends StatelessWidget {
  const TileExpansion({super.key,required this.question});

  final String question;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ExpansionTile(
        // To remove the border (up and down)
        collapsedShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // Same as the parent container
          side: BorderSide.none, // No border when collapsed
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // Same as the parent container
          side: BorderSide.none, // No border when expanded
        ),
        title: Text(
          question,
          style: FontUtil.font14SB(color: Colors.black),
        ),
        children: [
          Container(
            color: ColorUtil.secondaryColor,
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 15,),
                Text(
                  "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium "
                      "doloremque laudantium, totam rem aperiam, "
                      "eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.",
                  style: FontUtil.font14N(color: ColorUtil.textLightGrey),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "• Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium",
                  style: FontUtil.font14N(color: ColorUtil.textLightGrey),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "• Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit.",
                  style: FontUtil.font14N(color: ColorUtil.textLightGrey),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 15),
              ],
            ),
          )
        ],
      ),
    );
  }
}
