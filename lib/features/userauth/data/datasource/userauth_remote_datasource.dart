import 'dart:convert';

import 'package:http/http.dart' as http;

class UserAuthRemoteDataSource {
  // Future<UserAuthModel> getUserDetail(String email, String password) async {
  //   final response = await http.post(
  //     Uri.parse(Urls.login),
  //     body: {
  //       "nik": email,
  //       "password": password,
  //     },
  //   );

  //   if (response.statusCode == 200) {
  //     final responseBody = json.decode(response.body);
  //     return UserAuthModel.fromJson(responseBody['data']);
  //   } else {
  //     // Handle the error case
  //     throw Exception('Failed to login');
  //   }
  // }
}
