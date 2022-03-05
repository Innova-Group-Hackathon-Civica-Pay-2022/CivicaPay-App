import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class ProviderRequests {
  final url = Uri.parse("https://api.agify.io/?name=juan");

  void getHttp() async {
    var response = await http.get(url);
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
}
