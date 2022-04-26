import 'dart:convert' as convert;
import 'dart:io';
import 'package:http/http.dart' as http;

import 'model/Users.dart';

class ApiService {
  Future<List<Users>?> fetchHero() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    var jsonResponse = convert.jsonDecode(response.body) as List;
    print(jsonResponse);
    if (response.statusCode == 200) {
      return jsonResponse.map((e) => Users.fromJson(e)).toList();
    }
    if (response.statusCode == 404) {
      return throw HttpStatus.notFound;
    }
    return null;
  }
}
