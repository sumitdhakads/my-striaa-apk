import 'package:flutter/material.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/CustomAppbar.dart';
import 'package:striaa/widgets/TileExpansion.dart';
import 'package:striaa/widgets/image.dart';

class Faqone extends StatelessWidget {
  const Faqone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
       title: CustomAppbar(
         title: "FAQ",
       ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView(
          children: [
            const SizedBox(height: 20),
            TileExpansion(
              question: "Lorem ipsum dolor sit amet consectetur?",
            ),
            SizedBox(height: 15,),
            TileExpansion(
              question: "Lorem ipsum dolor sit amet consectetur?",
            ),
            SizedBox(height: 15,),
            TileExpansion(
              question: "Lorem ipsum dolor sit amet consectetur?",
            ),
            SizedBox(height: 15,),
            TileExpansion(
              question: "Lorem ipsum dolor sit amet consectetur?",
            ),
            SizedBox(height: 15,),
            TileExpansion(
              question: "Lorem ipsum dolor sit amet consectetur?",
            ),
            SizedBox(height: 160,),
          ],
        ),
      ),
    );
  }
}
