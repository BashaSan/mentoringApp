
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mentoringapp/src/widgets/routes.dart';
import 'package:velocity_x/velocity_x.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0,
        ),
        body: Container(
          padding: EdgeInsets.only(left: 20, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              "Welcome Back"
                  .text
                  .color(Color.fromARGB(255, 55, 25, 107))
                  .xl4
                  .make(),
              "Log In!".text.color(Color.fromARGB(255, 64, 26, 126)).xl5.make(),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(top: 30),
                child: SingleChildScrollView(
                  child: Form(
                    child: Column(
                      children: [
                        Image.network(
                          "https://staging.sunbirded.org/assets/images/sunbird_logo.png",
                          height: 50.0,
                        ).centered(),
                        SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          cursorColor: Colors.deepPurpleAccent,
                          decoration: InputDecoration(
                              hintText: "Enter Username",
                              labelText: "Username",
                              labelStyle: TextStyle(color: Colors.deepPurple)),
                          onChanged: (value) {},
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "username can't be empty";
                            }
                                  
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              hintText: "Enter Password",
                              labelText: "Password",
                              labelStyle: TextStyle(color: Colors.deepPurple)),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Material(
                          color: Color.fromARGB(255, 46, 18, 94),
                          borderRadius: BorderRadius.circular(20.0),
                          
                          child: InkWell(
                            onTap:() => Navigator.pushNamed(context, MyRoutes.MentorsListRoute),
                            child: AnimatedContainer(
                              
                              width: 80,
                              height: 40,
                              duration: 10.seconds,
                              child: "Login".text.white.make().centered(),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            "remember me".text.make(),
                            "Forgot Password".text.make()
                          ],
                        ).centered(),
                      ],
                    ),
                  ),
                ),
              ).centered(),
            ],
          ),
        ),
      );
}
