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
      locationUrl: 'api/ip',
      continent: '',
      country: 'United Kingdom',
      city: '',
      flag: 'uk.png',
    );
    await currentLocation.getTime();
    await currentLocation.getContinent();
    await currentLocation.getCity();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'locationUrl': currentLocation.locationUrl,
      'continent': currentLocation.continent,
      'country': currentLocation.country,
      'city': currentLocation.city,
      'flag': currentLocation.flag,
      'time': currentLocation.time,
      'isDaytime': currentLocation.isDaytime,
    });
    // print('=====>  locationUrl on loading: ${currentLocation.locationUrl}');
    // print('=====>  Continent on loading: ${currentLocation.continent}');
    // print('=====>  City on loading: ${currentLocation.city}');
    // print('=====>  Time on loading: ${currentLocation.time}');
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
