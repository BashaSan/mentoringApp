import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mentoringapp/src/widgets/mentor_list_card.dart';
import 'package:mentoringapp/src/widgets/navigation_drawer.dart';
import 'package:mentoringapp/src/widgets/themes_styles.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/mentors.dart';

class MentorList extends StatefulWidget {
  const MentorList({Key? key}) : super(key: key);

  @override
  State<MentorList> createState() => _MentorListState();
}

class _MentorListState extends State<MentorList> {
  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: HexColor("#71C5EE"),

      // appBar: AppBar(
      //   backgroundColor: myTheme.body,
      //   title: Text(
      //     "Mentors List",
      //     style: TextStyle(color: Colors.black),
      //   ),
      //   bottom: PreferredSize(
      //     preferredSize: const Size.fromHeight(50),
      //     child: "".text.make(),
      //   ),
      //   elevation: 0,
      //   actions: [
      //     IconButton(
      //         onPressed: () {
      //           showSearch(context: context, delegate: MySearchDelegate());
      //         },
      //         icon: Icon(
      //           Icons.search,
      //           color: Colors.black,
      //         )),
      //   ],
      // ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15.0, left: 10.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      )),
                  "Mentors List".text.white.textStyle(myStyle.mainTitle).make(),
                  IconButton(
                      onPressed: () {
                        showSearch(
                            context: context, delegate: MySearchDelegate());
                      },
                      icon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ))
                ]),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            height: MediaQuery.of(context).size.height - 130.0,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.only(topLeft: Radius.circular(100.0))),
            child: Padding(
              padding: EdgeInsets.only(top: 20.0, left: 30, right: 20),
              child: ListView.builder(
                  itemCount: Mentor.mentorsList.length,
                  itemBuilder: (context, index) {
                    final name = Mentor.mentorsList[index];
                    return MentorListCard(name);
                  }),
            ),
          )
        ],
      ));
}

class MySearchDelegate extends SearchDelegate {
  @override
  Widget? buildLeading(BuildContext context) => IconButton(
      onPressed: () => close(context, null), //close SearchBar
      icon: const Icon(Icons.arrow_back));

  @override
  List<Widget>? buildActions(BuildContext context) => [
        IconButton(
            onPressed: () {
              if (query.isEmpty) {
                close(context, null);
              }
              query = '';
            },
            icon: const Icon(Icons.clear))
      ];

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    return Container();
  }
}
