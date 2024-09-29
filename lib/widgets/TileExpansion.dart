import 'package:flutter/material.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/image.dart';

class TileExpansion extends StatefulWidget {
  final String question;

  const TileExpansion({super.key, required this.question});

  @override
  _TileExpansionState createState() => _TileExpansionState();
}

class _TileExpansionState extends State<TileExpansion> {
  bool _isExpanded = false; // To keep track of expansion state

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5), // Add margin between tiles
      decoration: BoxDecoration(
        color: _isExpanded ? Colors.white : Colors.transparent, // Light background when expanded
        borderRadius: BorderRadius.circular(15),

      ),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent), // No divider between title and content
        child: ExpansionTile(
          // Customize the icons for expanded and collapsed states
          trailing:SvgIcon(
            icon: _isExpanded ? ImageUtil.downsvg : ImageUtil.forwardsvg,
          ),

          // Icon(
          //   _isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
          //   color: ColorUtil.primaryColor, // Icon color for both states
          // ),
          title: Text(
            widget.question,
            style: FontUtil.font14M(color: Colors.black),
          ),
          onExpansionChanged: (bool expanded) {
            setState(() {
              _isExpanded = expanded; // Update state to reflect expanded/collapsed
            });
          },
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium "
                        "doloremque laudantium, totam rem aperiam, "
                        "eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.",
                    style: FontUtil.font14N(color: ColorUtil.textLightGrey),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "• Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium",
                    style: FontUtil.font14N(color: ColorUtil.textLightGrey),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "• Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit.",
                    style: FontUtil.font14N(color: ColorUtil.textLightGrey),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 15),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
