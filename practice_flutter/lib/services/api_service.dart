import 'dart:convert';
import 'dart:developer';
import 'package:practice_flutter/models/airplane_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  String baseUrl =
      "https://api.odcloud.kr/api/15043890/v1/uddi:9840de90-5907-49bd-94ed-acd173ea9ae1?page=1&perPage=10";

  Future<Object> getAirplaneSchedule() async {
    List<AirplaneModel> AirplaneInstances = [];
    final url = Uri.parse(baseUrl);
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final airplanes = jsonDecode(response.body);

      for (var airplane in airplanes) {
        final instance = AirplaneModel.fromJson(airplane);
        AirplaneInstances.add(instance);
        log(AirplaneInstances as String);
      }
      return AirplaneInstances;
    }
    return Exception("Failed to connect");
  }
}
