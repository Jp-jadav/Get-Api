import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/post_model.dart';

class UserController {
  Future<List<UserModel>> fetchUsers() async {
    const apiUrl = 'https://jsonplaceholder.typicode.com/users';
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      return data.map((user) => UserModel.fromJson(user)).toList();
    } else {
      throw Exception('Failed to load users');
    }
  }
}
