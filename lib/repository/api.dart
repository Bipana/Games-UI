import 'dart:async';
//includes a straightforward JSON encoder and decoder.
import 'dart:convert';

//import 'package:games/models/data.dart';
import 'package:games/models/listDetails.dart';
import 'package:games/models/serializers.dart';
import 'package:http/http.dart' as http;

class GameRepository {
  //static const int _perPage = 20;

  Future<ListDetails> getResponse(int page) async {

      //ListDetails listDetails =ListDetails();
    Map<String, dynamic> qParams = {
      'key': '9d99ea459ee0438db738e4cee3c674a0',
      'page': '$page',
      'page_size': '20',
    };

    var uri = Uri(
      scheme: 'https',
      host: 'api.rawg.io',
      path: 'api/platforms',
      queryParameters: qParams,
    );
    // final response = await http.get(uri);
    final response = await http.get(uri);
    var games = serializers.deserializeWith(
        ListDetails.serializer, json.decode(response.body));
    return games as ListDetails;
  }
 
}





// getRes(String username, String password) async {
//   Map<String, String> json = {'username': username, 'password': password};

//   var uri = Uri(
//     scheme: 'https',
//     host: 'reqres.in',
//     path: 'api/users',
//   );

//   final res = await http.post(uri, body: json);

//    var data = serializers.deserializeWith(
//         Data.serializer,json.decode(res.body));
//     return data as Data;
// }

//https://api.rawg.io/api/platforms?key=9d99ea459ee0438db738e4cee3c674a0&&page=1&&page_size=20&query=mommo%20deals

//https://reqres.in/api/users