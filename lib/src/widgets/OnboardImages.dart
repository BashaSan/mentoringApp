import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class buildImagesCard extends StatelessWidget {
  const buildImagesCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(

        padding: EdgeInsets.only(top: 20),
        child: Column(
         
          children: [
             Image.network("https://t3.ftcdn.net/jpg/03/46/83/96/360_F_346839683_6nAPzbhpSkIpb8pmAwufkC7c5eD7wYws.jpg",height: 40,width: 40,),
            Text("Teacher")],
        ),
      );
}
