import 'dart:convert';

import 'package:infinite_list/models/comment.dart';
import 'package:http/http.dart' as http;

Future<List<Comment>> getCommentFormAPI(int start, int limit) async {
       late final List<Comment> comments ;  
  final url =
      "https://jsonplaceholder.typicode.com/comments?_start=$start&_limit=$limit";
  final http.Client httpsClient = http.Client();

  try {
    final response = await httpsClient.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final responseData = await jsonDecode(response.body) as List;
      comments = await responseData.map((commet) {
        return Comment(
            id: commet["id"],
            name: commet["name"],
            email: commet["email"],
            body: commet["body"]);
      }).toList();
      
    }
  } catch (exception) {}
      return comments;
}
