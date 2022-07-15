import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mentoringapp/src/models/discussion_list_model.dart';
import 'package:mentoringapp/src/widgets/themes_styles.dart';
import 'package:velocity_x/velocity_x.dart';

import '../services/discussion_data.dart';
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
import '../widgets/discussion_list_card.dart';

class DiscussionsListView extends StatefulWidget {
  const DiscussionsListView({Key? key}) : super(key: key);

  @override
  State<DiscussionsListView> createState() => _DiscussionsListViewState();
}

class _DiscussionsListViewState extends State<DiscussionsListView> {
  List<Discussion>? discussion;
  var isLoaded = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

//getting data from discussion API
  getData() async {
    discussion = await RemoteService().getDiscussions();
    
    DiscussionModel.discussions = List.from(discussion!)
        .map<Discussion>((dis) => Discussion.fromJson(dis))
        .toList();

    if (discussion!= null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
      bottomNavigationBar: BottomAppBar(elevation: 0),
      appBar: AppBar(backgroundColor: myTheme.appBarTheme,elevation: 0,title: Text("My Discussion",style: myStyle.mainTitle,),),
      backgroundColor: HexColor("#71C5EE"),
      body: ListView(
        children: <Widget>[
         SizedBox(height: 30,),
          Container(
            height: MediaQuery.of(context).size.height - 110.0,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Padding(
              padding: EdgeInsets.only(
                top: 20.0,
              ),
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return DiscussionListCard();
                  }),
            ),
          ),
        ],
      ));

      
}

