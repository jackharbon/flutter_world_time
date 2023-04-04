import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setUpInitialWorldTime() async {
    WorldTime currentLocation = WorldTime(
      apiDomain: 'ipgeolocation.abstractapi.com',
      locationUrl: 'v1/',
      apiKey: '2a8a50cebcf24b05a136da317fc5c7fe',
      continent: '',
      country: '',
      city: '',
      flag: '',
    );
    await currentLocation.getDataFromApi();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'apiDomain': currentLocation.apiDomain,
      'locationUrl': currentLocation.locationUrl,
      'apiKey': currentLocation.apiKey,
      'continent': currentLocation.continent,
      'country': currentLocation.country,
      'city': currentLocation.city,
      'flag': currentLocation.flag,
      'time': currentLocation.time,
      'isIpGeo': currentLocation.isIpGeo,
      'dayPart': currentLocation.dayPart,
    });
    print('====> loading | continent: ${currentLocation.continent}');
    print('====> loading | country: ${currentLocation.country}');
    print('====> loading | city: ${currentLocation.city}');
    print('====> loading | flag: ${currentLocation.flag}');
    print('====> loading | time: ${currentLocation.time}');
    print('====> loading | isIpGeo: ${currentLocation.isIpGeo}');
    print('====> loading | dayPart: ${currentLocation.dayPart}');
  }

  @override
  void initState() {
    super.initState();
    setUpInitialWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              SpinKitFadingCircle(
                color: Colors.yellow,
                size: 80.0,
              ),
            ]),
      ),
    );
  }
}
