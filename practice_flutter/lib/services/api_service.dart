import 'dart:convert';
import 'dart:developer';
import 'package:practice_flutter/models/airplane_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  String baseUrl = "https://infuser.odcloud.kr/oas/docs?namespace=15043890/v1";

  Future<List<AirplaneModel>> getAirplaneSchedule() async {
    List<AirplaneModel> AirplaneInstances = [];
    final url = Uri.parse(baseUrl);
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final airplanes = jsonDecode(response.body);

      for (var airplane in airplanes) {
        log(airplane);
      }
      return airplanes;
    }
    throw Error();
  }
}
