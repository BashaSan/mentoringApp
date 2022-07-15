import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mentoringapp/src/models/mentors.dart';
import 'package:mentoringapp/src/widgets/themes_styles.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/mentors.dart';
import '../pages/mentor_detailed_page.dart';

class MentorListCard extends StatelessWidget {
  final name;
  const MentorListCard(this.name, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: ((context) => MentorDetailedView(
                      description: Mentor.description,
                      title: this.name,
                    )))),
        child: Hero(
          tag: Key(Mentor.description),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Card(
                margin: EdgeInsets.only(left: 18, top: 8, right: 8),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                elevation: 10.0,
                child: Container(
                  height: 120.0,
                  padding: EdgeInsets.all(20),
                  child: GridTile(
                      child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ProfilePicture(
                        name: "${this.name}",
                        radius: 28,
                        fontsize: 30,
                        count: 1,
                        random: true,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          "${this.name}"
                              .text
                              .textStyle(myStyle.mentor)
                              .make(),
                          "${Mentor.description}"
                              .text
                              .textStyle(context.captionStyle)
                              .make()
                        ],
                      )),
                    ],
                  )),
                ),
              ),
            ],
          ),
        ),
      );
}
