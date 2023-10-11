import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:kelas_flutter/project_train/k3l_app/api/command/preference_handler.dart';
import 'package:kelas_flutter/project_train/k3l_app/api/endpoints.dart';
import 'package:kelas_flutter/project_train/k3l_app/model/login_model.dart';

class Auth {
  Future<LoginModel> loginApi(String nik, String password) async {
    var url = Uri.parse("${Endpoint.urlLogin}?nik=$nik&password=$password");

    try {
      //   final header = {
      //     "Content-type": "application/json",
      //     "Accept": "application/json",
      //     'APP_KEY': 'bmj#2022',
      //   };
      // print(header);
      var response = await http.get(
        url,
        // headers: header,
      );
      print(response.statusCode);
      print(response.headers);
      print(response.request);
      // print(header);
      print(response.body);
      if (response.statusCode == 200) {
        // If the server did return a 200 OK response,
        // then parse the JSON.
        print(response.body);
        PreferenceHandler.storingDataLogin(json.decode(response.body));
        return LoginModel.fromJson(json.decode(response.body));
      } else {
        throw Exception('Failed to fetch data'); // Handle non-200 status codes
      }
    } catch (e) {
      print("Error: $e");
      rethrow;
    }
  }
}
 // APIKEY.header: APIKEY.apiKey
      //80082200
      //guspri0880

// import 'package:dio/dio.dart'; // Import paket dio
// import 'package:kelas_flutter/project_train/k3l_app/api/endpoints.dart';
// import 'package:kelas_flutter/project_train/k3l_app/model/login_model.dart';

// class Auth {
//   Future<LoginModel> loginApi(String nik, String password) async {
//     var url = "${Endpoint.urlLogin}?nik=$nik&password=$password";

//     try {
//       final dio = Dio(); // Buat instansi Dio

//       final header = {
//         'APP_KEY': 'bmj#2022',
//         // "Content-type": "application/json",
//         // "Accept": "application/json",
//       };

//       dio.options.headers.addAll(header); // Set header dalam Dio options

//       Response response = await dio.get(
//         url,
//       );

//       print(response.statusCode);
//       print(response.headers.map);
//       print(response.requestOptions.headers);
//       print(header);
//       print(response.data); // response.data berisi body JSON

//       if (response.statusCode == 200) {
//         // Jika server mengembalikan respons 200 OK,
//         // maka parse JSON.
//         return LoginModel.fromJson(response.data);
//       } else {
//         throw Exception(
//             'Failed to fetch data'); // Tangani kode status selain 200
//       }
//     } catch (e) {
//       print("Error: $e");
//       rethrow;
//     }
//   }
// }
