import 'package:dio/dio.dart';

class ProviderRequests {
  final url = "https://api.agify.io/?name=bella";

  void getHttp() async {
    try {
      var response = await Dio().get(url);
      print(response);
    } catch (e) {
      print(e);
    }
  }
}
