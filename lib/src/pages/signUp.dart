import 'dart:io';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mentoringapp/src/pages/logIn.dart';
import 'package:mentoringapp/src/widgets/themes_styles.dart';
import 'package:velocity_x/velocity_x.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: HexColor("#62A8FF"),
        body: Center(
          child: Container(
            padding: EdgeInsets.only(top: 30),
            child: Column(
              children: <Widget>[
                Image.network(
                  "https://staging.sunbirded.org/assets/images/sunbird_logo.png",
                  height: 250.0,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Sign Up",
                  style: TextStyle(color: Colors.black, fontSize: 30.0),
                ),
                SizedBox(height: 10),
                "It's easy to sign up Now".text.make(),
                SizedBox(
                  height: 30.0,
                ),
                SizedBox(
                  height: 50.0,
                  width: 270.0,
                  child: ElevatedButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          "https://www.freshgujarat.com/wp-content/uploads/2020/02/DIKSHA-App-Download.png",
                          height: 30,
                          width: 30,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        "Login with Diksha"
                            .text
                            .xl2
                            .textStyle(myStyle.mainTitle)
                            .fontWeight(FontWeight.w200)
                            .color(Colors.black)
                            .make(),
                      ],
                    ),
                    style: ButtonStyle(
                        elevation: MaterialStateProperty.all(10.0),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)))),
                    onPressed: () {},
                  ),
                ),
                SizedBox(height: 30),
                SizedBox(
                  height: 50.0,
                  width: 270.0,
                  child: ElevatedButton.icon(
                    icon: FaIcon(
                      FontAwesomeIcons.google,
                      color: Colors.red,
                    ),
                    label: "Sign Up with Google"
                        .text
                        .xl2
                        .textStyle(myStyle.mainTitle)
                        .fontWeight(FontWeight.w200)
                        .color(Colors.black)
                        .make(),
                    onPressed: () {
                      // final provider = Provider.of<GoogleSignInProvider>(
                      //     context,
                      //     listen: false);
                      // provider.googleLogin();
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          (Colors.white),
                        ),
                        elevation: MaterialStateProperty.all(10.0),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ))),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 50.0,
                  width: 270.0,
                  child: ElevatedButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        "Login with State System"
                            .text
                            .xl2
                            .textStyle(myStyle.mainTitle)
                            .fontWeight(FontWeight.w200)
                            .color(Colors.black)
                            .make(),
                      ],
                    ),
                    style: ButtonStyle(
                        elevation: MaterialStateProperty.all(10.0),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)))),
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.linkedin,
                          color: Colors.blue,
                          size: 40.0,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          FontAwesomeIcons.facebook,
                          color: Colors.blue,
                          size: 40.0,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          FontAwesomeIcons.twitter,
                          color: Colors.blue,
                          size: 40.0,
                        ),
                      ]),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an Account? ",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
                    ),
                    InkWell(
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                      onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Login())),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      );
}
