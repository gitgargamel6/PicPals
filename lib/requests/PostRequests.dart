import 'dart:convert';
import 'dart:html';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'server_ip.dart';

class PostRequests {
  static const String url = "http://${serverIp}:5000/api/auth/";

  static Future<http.Response> create(image) async {
    final prefs = await SharedPreferences.getInstance();
    final cookie = prefs.getString('cookie') ?? '';

    http.Response res = await http.post(Uri.parse('${url}createPost'),
        headers: {'Content-type': 'application/json', 'cookie': cookie},
        body: jsonEncode({"image": image}));

    return res;
  }

  static Future<http.Response> getFriendsPosts() async {
    final prefs = await SharedPreferences.getInstance();
    final cookie = prefs.getString('cookie') ?? '';

    http.Response res = await http.get(Uri.parse('${url}getFriendsPosts'),
        headers: {'content-type': 'application/json', 'cookie': cookie});

    return res;
  }
}
