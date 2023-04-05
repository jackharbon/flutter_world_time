import 'package:http/http.dart';
import 'dart:convert';
import 'dart:async';

class WorldTime {
  String apiDomain = '';
  String locationUrl = '';
  String apiKey = '';
  String continent = '';
  String country = '';
  String city = '';
  String flag = '';
  String time = '';
  String dayPart = '';
  bool isIpGeo = false;

  WorldTime({
    required this.apiDomain,
    required this.locationUrl,
    required this.apiKey,
    required this.continent,
    required this.country,
    required this.city,
    required this.flag,
  });

  Future<void> getDataFromApi() async {
    try {
      final queryParameters = {
        'api_key': apiKey,
        'location': city,
      };
      final url = Uri.http(apiDomain, locationUrl, queryParameters);
      // print('====> world_time | url: $url');
      Response response = await get(url);
      Map data = jsonDecode(response.body);
      isIpGeo = apiDomain == 'ipgeolocation.abstractapi.com' ? true : false;
      // print('====> world_time | DATA: $data');
      continent = isIpGeo ? '${data['continent']}' : continent;
      country = isIpGeo ? '${data['country']}' : country;
      city = isIpGeo ? '${data['city']}' : city;
      flag = isIpGeo ? '${data['flag']['png']}' : flag;
      time = isIpGeo
          ? '${data['timezone']['current_time']}'
          : '${data['datetime']}';
      // print('====> world_time | time 1: $time');
      time = isIpGeo
          ? time.substring(0, time.length - 3)
          : time.substring(time.length - 8, time.length - 3);
      dynamic hour = time.substring(0, 2);
      hour = int.parse(hour);
      dayPart = hour > 5 && hour <= 9
          ? 'sunrise'
          : hour > 9 && hour <= 17
              ? 'midday'
              : hour > 17 && hour <= 21
                  ? 'sunset'
                  : hour > 21 && hour <= 23
                      ? 'night1'
                      : 'night2';

      // print('====> world_time | continent: $continent');
      // print('====> world_time | country: $country');
      // print('====> world_time | city: $city');
      // print('====> world_time | flag: $flag');
      // print('====> world_time | time 2: $time');
      // print('====> world_time | isIpGeo: $isIpGeo');
      // print('====> world_time | dayPart: $dayPart');
    } catch (e) {
      // print('=====> getTime error: $e');
      time = 'Time could not be obtained';
    }
  }
}
