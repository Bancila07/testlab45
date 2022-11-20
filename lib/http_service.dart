import 'dart:convert';
import 'package:http/http.dart';
import 'post_model.dart';

class HttpService {
  final String postsURL = "http://mobile-shop-api.hiring.devebs.net/products";

  Future<Welcome> getPosts() async {
    Response res = await get(postsURL);

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);
      print(jsonDecode(res.body));
      return Welcome.fromJson(jsonDecode(res.body));
    } else {
      throw "Unable to retrieve posts.";
    }
  }
}