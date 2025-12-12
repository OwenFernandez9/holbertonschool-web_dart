import 'dart:convert';
import '1-util.dart';

Future<String> getUserId() async {
  String jsonStr = await fetchUserData();
  Map<String, dynamic> data = json.decode(jsonStr);
  return data['id'];
}
