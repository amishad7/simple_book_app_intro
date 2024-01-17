import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:untitled6/app/screens/home/model/helperModel.dart';

class WeatherHelper {
  WeatherHelper._();
  static WeatherHelper weatherHelper = WeatherHelper._();

//todo : https://api.weatherapi.com/v1/forecast.json?key=e09f03988e1048d2966132426232205&q=?Limit=100
//todo :https://api.weatherapi.com/v1/forecast.json?key=3c5009be4d49494f9d245829232208&q=$searchData||india&days=1&aqi=no&alerts=no
  fetchData({required String search}) async {
    String key = "3c5009be4d49494f9d245829232208";
    String hostname = "http://api.weatherapi.com";
    String city = search;

    String api =
        "$hostname/v1/forecast.json?key=$key&q=$city||surat&days=1&aqi=no&alerts=no";
    http.Response response = await http.get(Uri.parse(api));

    log("Status Code:  ${response.statusCode}");

    if (response.statusCode == 200) {
      var decodeData = jsonDecode(response.body);

      log('=========================');
      log('Decoded Data: ${decodeData['location']}');
      log('=========================');

      LocationModel data = LocationModel.fromApi(data: decodeData['location']);
      ForecastModel forecastData =
          ForecastModel.fetchData(forData: decodeData['forecast']);

      log('=========================');
      log('WeatherModel Data: ${data}');
      log('=========================');
      log('=========================');
      log('ForecastData Data: ${forecastData}');
      log('=========================');

      return data;
    }
  }
}
