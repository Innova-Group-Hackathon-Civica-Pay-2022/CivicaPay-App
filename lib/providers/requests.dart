import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class ProviderRequests {
  final profileUrl = Uri.parse("https://api.agify.io/?name=Maria");
  final activitiesUrl =
      Uri.parse('http://165.227.251.139:8080/api/v1/activity/activity');

  void getHttp() async {
    var response = await http.get(profileUrl);
    if (response.statusCode == 200) {
      var jsonResponse =
          convert.jsonDecode(response.body) as Map<String, dynamic>;
      var name = jsonResponse['name'];
      var age = jsonResponse['age'];
      var points = jsonResponse['count'];
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

  void getActivities() async {
    var response = await http.get(activitiesUrl);

    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      print(jsonResponse);
      print("Test \n");
      print(jsonResponse[0]);
      print("Test \n");
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }
}
