import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String apiDomain = 'worldtimeapi.org';
  String locationUrl = '';
  String timezone = '';
  String continent = '';
  String country = '';
  String city = '';
  String flag = '';
  String time = '';
  bool isDaytime = false;

  WorldTime({
    required this.locationUrl,
    required this.continent,
    required this.country,
    required this.city,
    required this.flag,
  });

  Future<void> getTime() async {
    try {
      var url = Uri.http(apiDomain, locationUrl);
      Response response = await get(url);
      Map data = jsonDecode(response.body);
      String dateTime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);
      DateTime now = DateTime.parse(dateTime);
      now = now.add(Duration(hours: int.parse(offset)));
      isDaytime = now.hour > 5 && now.hour < 20 ? true : false;
      time = DateFormat.jm().format(now);
      // time = now.toString().substring(11, 19);
      print('=====>  Time on world_time: $time');
      print('=====>  Data on world_time: $data');
    } catch (e) {
      print('=====> getTime error: $e');
      time = 'Time could not be obtained';
    }
  }

  Future<void> getContinent() async {
    try {
      var url = Uri.http(apiDomain, locationUrl);
      Response response = await get(url);
      Map data = jsonDecode(response.body);
      // print('=====>  Data on world_time: $data');
      // String timezone = data['timezone'];
      timezone = data['timezone'];
      continent = timezone.substring(0, (timezone.indexOf("/")));
      print('=====>  Continent on world_time: $continent');
    } catch (e) {
      print('=====>  getContinent error: $e');
      continent = 'Continent could not be obtained';
    }
  }

  Future<void> getCity() async {
    try {
      var url = Uri.http(apiDomain, locationUrl);
      Response response = await get(url);
      Map data = jsonDecode(response.body);
      // print('=====>  Data on world_time: $data');
      timezone = data['timezone'];
      city = timezone.substring((timezone.indexOf("/") + 1));
      print('=====>  City on world_time: $city');
    } catch (e) {
      print('=====> getCity error: $e');
      city = 'City could not be obtained';
    }
  }
}
