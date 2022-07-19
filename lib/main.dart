import 'package:flutter/material.dart';
import 'package:mentoringapp/src/pages/discussion_detailed.dart';
import 'package:mentoringapp/src/pages/logIn.dart';
import 'package:mentoringapp/src/pages/mentor_detailed_page.dart';
import 'package:mentoringapp/src/pages/mentor_list_page.dart';
import 'package:mentoringapp/src/pages/oneOnoneDisList.dart';
import 'package:mentoringapp/src/pages/signUp.dart';
import 'package:mentoringapp/src/widgets/mentor_list_card.dart';
import 'package:mentoringapp/src/widgets/routes.dart';

import 'src/pages/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          body: Onboarding(),
        ),
        debugShowCheckedModeBanner: false,
       // initialRoute: MyRoutes.loginRoute,
        routes: {
          MyRoutes.signUpRoute: (context) => SignUp(),
          MyRoutes.loginRoute: (context) => Login(),
          MyRoutes.MentorsListRoute: (context) => MentorList(),
          MyRoutes.myDiscussionRoute: (context) => MyDiscussion(),
          MyRoutes.DiscussionsListRoute: (context) => DiscussionsListView(),
        },
      );
}
