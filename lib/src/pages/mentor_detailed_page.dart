// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mentoringapp/src/widgets/routes.dart';
import 'package:mentoringapp/src/widgets/themes_styles.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/mentors.dart';

class MentorDetailedView extends StatelessWidget {
  final String title;
  final String description;
  const MentorDetailedView({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: HexColor("#71C5EE"),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: HexColor("#71C5EE"),
        title: "$title".text.xl3.textStyle(myStyle.mainTitle).make(),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: Text(""),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        margin: EdgeInsets.only(top: 40),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50), topRight: Radius.circular(50))),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            CircleAvatar(
              backgroundColor: HexColor("#71C5EE"),
              radius: 40.0,
            ),
            SizedBox(height: 100),
            "Mentor Data".text.xl3.make(),
            SizedBox(height: 100),
            SizedBox(
              height: 150.0,
            ),
            SizedBox(
              height: 35.0,
              width: 170.0,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.DiscussionsListRoute);
                },
                child: "Start Discussion".text.white.xl2.make(),
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all(10),
                    backgroundColor:
                        MaterialStateProperty.all(HexColor("#71C5EE")),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)))),
              ),
            )
          ],
        ),
      ));
}
