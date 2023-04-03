import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int index = 0;
  List<WorldTime> locations = [
    WorldTime(
        locationUrl: 'api/timezone/Africa/Nairobi',
        continent: 'Africa',
        country: 'Kenya',
        city: 'Nairobi',
        flag: 'kenya.png'),
    WorldTime(
        locationUrl: 'api/timezone/Africa/Cairo',
        continent: 'Africa',
        country: 'Egypt',
        city: 'Cairo',
        flag: 'egypt.png'),
    WorldTime(
        locationUrl: 'api/timezone/America/New_York',
        continent: 'America',
        country: 'United States',
        city: 'New York',
        flag: 'usa.png'),
    WorldTime(
        locationUrl: 'api/timezone/Asia/Jakarta',
        continent: 'Asia',
        country: 'Indonesia',
        city: 'Jakarta',
        flag: 'indonesia.png'),
    WorldTime(
        locationUrl: 'api/timezone/Europe/London',
        continent: 'Europe',
        country: 'United Kingdom',
        city: 'London',
        flag: 'uk.png'),
    WorldTime(
        locationUrl: 'api/timezone/Europe/Berlin',
        continent: 'Europe',
        country: 'Germany',
        city: 'Berlin',
        flag: 'germany.png'),
  ];
  void updateTime(index) async {
    WorldTime chosenLocation = locations[index];
    await chosenLocation.getTime();
    await chosenLocation.getContinent();
    await chosenLocation.getCity();
    Navigator.pop(context, {
      'locationUrl': chosenLocation.locationUrl,
      'continent': chosenLocation.continent,
      'country': chosenLocation.country,
      'city': chosenLocation.city,
      'flag': chosenLocation.flag,
      'time': chosenLocation.time,
      'isDaytime': chosenLocation.isDaytime,
    });
    print(
        '=====>  locationUrl on choose_location: ${chosenLocation.locationUrl}');
    print('=====>  Continent on choose_location: ${chosenLocation.continent}');
    print('=====>  Country on choose_location: ${chosenLocation.country}');
    print('=====>  City on choose_location: ${chosenLocation.city}');
    print('=====>  Time on choose_location: ${chosenLocation.time}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2.0, vertical: 4.0),
            child: Card(
              child: ListTile(
                onTap: () {
                  updateTime(index);
                },
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                        '${locations[index].city} - ${locations[index].country}'),
                    Text('(${locations[index].continent})'),
                  ],
                ),
                leading: CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/${locations[index].flag}'),
                ),
              ),
            ),
          );
        },
      ),
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: const Text('Choose city'),
        centerTitle: true,
        elevation: 0,
      ),
    );
  }
}
