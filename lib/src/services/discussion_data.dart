import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../models/discussion_list_model.dart';

class RemoteService {
  Future<List<Discussion>?> getPosts() async {
    var client = http.Client();

    var url = Uri.parse("https://preprod.ntp.net.in/discussion/user/uid/247");
    var response = await client.get(url);

    if (kDebugMode) {
      print(response.statusCode);
    }
    print(response.body);
    if (response.statusCode == 200) {
      print(response.body);
      var json = response.body;

      return discussionFromJson(json);
    }
  }
}
