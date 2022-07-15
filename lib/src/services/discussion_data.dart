import 'dart:convert' as convert;

import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;
import 'package:velocity_x/velocity_x.dart';

import '../models/discussion_list_model.dart';

class RemoteService {
  Future<List<Discussion>?> getDiscussions() async {
    var client = http.Client();
    var url = Uri.parse(
        "https://preprod.ntp.net.in/discussion/topic/805/test-discussion?page=1");

    var response = await client.get(url);
    print(response.statusCode);
    if (response.statusCode == 200) {
      var json = response.body;
      return discussionFromJson(json);
    }
  }
}
