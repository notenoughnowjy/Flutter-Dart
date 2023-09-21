class AirplaneModel {
  // 항공사, 편명, 출발공항, 도착공항, 출발시간
  // 도착시간, 운항요일, 시작일자, 종료일자, 비고
  final String airline,
      airline_flight_number,
      departing_airport,
      arrival_airport,
      departure_time,
      arrival_time,
      operation_day,
      start_date,
      end_date,
      description;

  AirplaneModel.fromJson(Map<String, dynamic> json)
      : airline = json['항공사'],
        airline_flight_number = json['편명'],
        departing_airport = json['출발공항'],
        arrival_airport = json['도착공항'],
        departure_time = json['출발시간'],
        arrival_time = json['도착시간'],
        operation_day = json['운항요일'],
        start_date = json['시작일자'],
        end_date = json['종료일자'],
        description = json['비고'];
}
