import 'package:flutter/material.dart';
import 'package:testlab45/post_detail.dart';
import 'http_service.dart';
import 'post_model.dart';

class PostsPage extends StatelessWidget {
  final HttpService httpService = HttpService();
  late Future<Welcome> futureResult;
  @override
  void initState(){
    // super.initState();
    futureResult = httpService.getPosts() as Future<Welcome>;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Posts"),
      ),
      body: FutureBuilder(
        future: Future.wait([futureResult]),
        builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
          if (snapshot.hasData) {
            List<Welcome> posts = snapshot.data as List<Welcome>;
            return Column(
              Text(snapshot.data![0].results[0].name),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}