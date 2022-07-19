import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mentoringapp/src/pages/logIn.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../widgets/OnboardImages.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: new ShowDialog(),
      );
}

class ShowDialog extends StatelessWidget {
  // Wrapper Widget
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration.zero, () => showAlert(context));
    return Login();
  }

  void showAlert(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              content: Container(
                padding: EdgeInsets.all(10),
                height: 300,
                decoration: BoxDecoration(color: Colors.white),
                child: Center(
                  child: GridView.builder(
                  
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 30,
                    crossAxisSpacing: 10,
                    crossAxisCount: 2,
                  ),
                  itemCount: 4,
                  itemBuilder: (context, index) => buildImagesCard()),
                ),
              ),
            ));
  }
}

