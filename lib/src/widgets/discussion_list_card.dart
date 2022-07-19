import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mentoringapp/src/models/discussion_list_model.dart';
import 'package:mentoringapp/src/services/discussion_data.dart';
import 'package:mentoringapp/src/widgets/themes_styles.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:intl/intl.dart';

class DiscussionListCard extends StatelessWidget {
  const DiscussionListCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Card(
          margin: EdgeInsets.all(8),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          elevation: 10.0,
          child: Container(
            width: 300,
            padding: EdgeInsets.only(left: 10, top: 10),
            child: GridTile(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 290,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Title of discussion",
                            overflow: TextOverflow.fade,
                            maxLines: 1,
                            softWrap: false,
                            style: myStyle.discussionTitle,
                          ),
                          "description of Discusision will be shown here this is th ediscussioon description as of now dummy data is icluded"
                              .text
                              .textStyle(myStyle.description)
                              .black
                              .maxLines(3)
                              .make(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.message_outlined,
                                    color: HexColor("#71C5EE"),
                                  )),
                              Icon(CupertinoIcons.arrow_down),
                              Text(
                                "${DateFormat("dd MMM yyyy").format(DateTime.now())}",
                              ),
                              Icon(Icons.remove_red_eye_rounded),
                            ],
                          )
                        ],
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ]);
}
