// import 'package:flutter/material.dart';
// import 'post_model.dart';
//
// class PostDetail extends StatelessWidget {
//   final Result post;
//
//   const PostDetail({required this.post});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text(post.name),
//         ),
//         body: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(12.0),
//             child: Column(
//               children: <Widget>[
//                 Card(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: <Widget>[
//                       ListTile(
//                         title: Text("Title"),
//                         subtitle: Text(post.name),
//                       ),
//                       ListTile(
//                         title: Text("ID"),
//                         subtitle: Text("${post.id}"),
//                       ),
//                       ListTile(
//                         title: Text("Body"),
//                         subtitle: Text(post.details),
//                       ),
//                       ListTile(
//                         title: Text("User ID"),
//                         subtitle: Text("${post.price}"),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         )
//     );
//   }
// }