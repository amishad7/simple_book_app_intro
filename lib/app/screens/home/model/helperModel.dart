class LocationModel {
  var name;
  var region;
  var country;
  var lat;
  var lon;
  var tz_id;
  var localtime_epoch;
  var localtime;

  LocationModel({
    required this.name,
    required this.country,
    required this.region,
    required this.lat,
    required this.lon,
    required this.tz_id,
    required this.localtime,
    required this.localtime_epoch,
  });

  factory LocationModel.fromApi({required Map data}) {
    return LocationModel(
      name: data['name'],
      country: data['country'],
      region: data['region'],
      lat: data['lat'],
      lon: data['lon'],
      tz_id: data['tz_id'],
      localtime: data['localtime'],
      localtime_epoch: data['localtime_epoch'],
    );
  }
}

class ForecastModel {
  var forecastday;

  ForecastModel({required this.forecastday});

  factory ForecastModel.fetchData({required Map forData}) {
    return ForecastModel(forecastday: forData['forecastday']);
  }
}
