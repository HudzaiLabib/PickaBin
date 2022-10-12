import 'dart:convert';
import 'package:boilerplate/models/lapor_acara.dart';
import 'package:http/http.dart' as http;

class LaporAcaraController{
  Future<List<LaporAcara>> getLaporAcara() async {
    final response = await http.get(Uri.parse('https://azdevweb.online/api/laporAcara/'));
    if (response.statusCode == 200) {
      LaporAcaraResult laporAcaraResult = laporAcaraFromJson(response.body);
      List<LaporAcara> laporAcara = laporAcaraResult.data;
      return laporAcara;
    } else {
      throw Exception('Failed to load data');
    }
  }

  static Future<http.Response> addLaporAcara(String uid, String title, String description, String date, String time) async {
    return http.post(
      Uri.parse('https://azdevweb.online/api/laporAcara/store'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'uid': uid,
        'title': title,
        'description': description,
        'date': date,
        'time': time,
      }),
    );
  }
}