import 'package:api_demo/post_api/user_view.dart';
import 'package:flutter/material.dart';
import 'get_api/views/post_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MVC Example',
      //get api cal
      home: UserScreen(),
      //post api call
      // home: UserCreateScreen(),
    );
  }
}
