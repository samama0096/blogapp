import 'dart:convert';
import 'package:blogapp/models/blog.models.dart';
import 'package:http/http.dart' as http;

class Blog_repo {
  Future<List<Blog>> getFeed() async {
    final Uri url = Uri.parse('https://zones-api.herokuapp.com/blog/getfeed');

    http.Response res = await http.get(url);
    Map<String, dynamic> rp = jsonDecode(res.body);
    List<dynamic> bodydata = rp["data"];
    List<Blog> blogs =
        bodydata.map((eachItem) => Blog.fromJson(eachItem)).toList();
    return blogs;
  }

  static postBlog(String username, String title, String body) async {
    final Uri url = Uri.parse(
        'https://zones-api.herokuapp.com/blog/upload/$username/$title/$body');

    http.Response res = await http.post(url);
    return res.statusCode;
  }
}
