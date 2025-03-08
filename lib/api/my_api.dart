import 'dart:convert';

import 'package:http/http.dart' as http;

class MyApi {
  Future<List> selectAllData() async {
    var res = await http.get(
        Uri.parse('https://657173ccd61ba6fcc0129420.mockapi.io/UserDetail'));
    return jsonDecode(res.body);
  }

  Future<void> deleteDataById(String id) async {
    var res = await http.delete(Uri.parse(
        'https://657173ccd61ba6fcc0129420.mockapi.io/UserDetail/' + id));
  }

  Future<void> insert(Map<String, dynamic> map) async {
    var res = await http.post(
        Uri.parse('https://657173ccd61ba6fcc0129420.mockapi.io/UserDetail'),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(map));
  }

  Future<void> editDataById(Map<String, dynamic> map, String id) async {
    var res = await http.put(
        Uri.parse(
            'https://657173ccd61ba6fcc0129420.mockapi.io/UserDetail/' + id),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(map));
  }
}
