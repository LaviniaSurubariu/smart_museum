// import 'dart:convert';
// import 'dart:io';
//
// import 'package:http/http.dart' as http;
// import 'package:http/http.dart';
// import 'package:http/io_client.dart';
//
// import '../models/login&create/login_response.dart';
// import '../models/user/app_user/app_user.dart';
//
// class MyHttpClient extends http.BaseClient {
//   @override
//   Future<http.StreamedResponse> send(http.BaseRequest request) async {
//     final HttpClient httpClient = HttpClient()
//       ..badCertificateCallback = ((X509Certificate cert, String host, int port) => true);
//     final IOClient ioClient = IOClient(httpClient);
//     return ioClient.send(request);
//   }
// }
//
// class LoginApi {
//   LoginApi(this._client);
//
//   final MyHttpClient _client;
//
//   Future<AppUser> loginResponse({required String email, required String password}) async {
//     final Response response = await _client.post(
//       Uri.parse('https://10.0.2.2:7072/api/account/login'),
//       headers: <String, String>{
//         'Content-Type': 'application/json',
//       },
//       body: jsonEncode(<String, String>{
//         'email': email,
//         'password': password,
//       }),
//     );
//
//
//     final Map<String, dynamic> jsonBody = json.decode(response.body) as Map<String, dynamic>;
//     final LoginResponse loginResponse = LoginResponse.fromJson(jsonBody);
//
//     return AppUser(token: loginResponse.token);
//   }
// }

// Future<void>main() async {
//   final MyHttpClient client = MyHttpClient();
//   final LoginApi loginApi = LoginApi(client);
//   final response = await loginApi.loginResponse(email: 'surubariu.lavinia@gmail.com', password: 'Test@123');
//   print(response);
// }
