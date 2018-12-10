import 'dart:convert';
import 'dart:async';

import 'package:http/http.dart' as http;

fetchPost() async {
  print('start fetching');
  try {
    final response = await http.get('https://petrimazepa.com/rest_flow');
//  final bla = json.decode(response.body);
    final bla = Post.fromJson(json.decode(response.body));
    final a = 3;
    print('bla $a');
  } catch (e) {
    print('bla error $e');
  }
}

class Post {
  final int userId;
  final int id;
  final String title;
  final String body;

  Post({this.userId, this.id, this.title, this.body});

  factory Post.fromJson(List<dynamic> json) {
    return Post(
      userId: json[1],
      id: json[2],
      title: json[3],
      body: json[4],
    );
  }
}
