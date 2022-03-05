import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class ProviderRequests {
  final profileUrl = Uri.parse("https://api.agify.io/?name=Maria");

  void getHttp() async {
    var response = await http.get(profileUrl);
    if (response.statusCode == 200) {
      var jsonResponse =
          convert.jsonDecode(response.body) as Map<String, dynamic>;
      var name = jsonResponse['name'];
      var age = jsonResponse['age'];
      var points = jsonResponse['count'];
      print('Name: $name.');
      print('Age: $age.');
      print('Points: $points.');
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  Future<String> getUserName() async {
    var response = await http.get(profileUrl);
    if (response.statusCode == 200) {
      var jsonResponse =
          convert.jsonDecode(response.body) as Map<String, dynamic>;
      return jsonResponse['name'];
    } else {
      print('Request failed with status: ${response.statusCode}.');
      return '';
    }
  }

  Future<int> getUserPoints() async {
    var response = await http.get(profileUrl);
    if (response.statusCode == 200) {
      var jsonResponse =
          convert.jsonDecode(response.body) as Map<String, dynamic>;
      return jsonResponse['count'] % 560;
    } else {
      print('Request failed with status: ${response.statusCode}.');
      return 0;
    }
  }
}
