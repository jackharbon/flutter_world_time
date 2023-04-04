import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  // int index = 0;
  List<WorldTime> locations = [
    WorldTime(
        apiDomain: 'timezone.abstractapi.com',
        locationUrl: 'v1/current_time/',
        apiKey: '5ae4cd55e43045668d718f37179a1159',
        continent: 'Afrika',
        country: 'South Africa',
        city: 'Johannesburg',
        flag: 'south_africa.jpg'),
    WorldTime(
        apiDomain: 'timezone.abstractapi.com',
        locationUrl: 'v1/current_time/',
        apiKey: '5ae4cd55e43045668d718f37179a1159',
        continent: 'Afrika',
        country: 'Kenya',
        city: 'Nairobi',
        flag: 'kenya.jpg'),
    WorldTime(
        apiDomain: 'timezone.abstractapi.com',
        locationUrl: 'v1/current_time/',
        apiKey: '5ae4cd55e43045668d718f37179a1159',
        continent: 'Africa',
        country: 'Egypt',
        city: 'Cairo',
        flag: 'egypt.jpg'),
    WorldTime(
        apiDomain: 'timezone.abstractapi.com',
        locationUrl: 'v1/current_time/',
        apiKey: '5ae4cd55e43045668d718f37179a1159',
        continent: 'Asia',
        country: 'Indonesia',
        city: 'Jakarta',
        flag: 'indonesia.jpg'),
    WorldTime(
        apiDomain: 'timezone.abstractapi.com',
        locationUrl: 'v1/current_time/',
        apiKey: '5ae4cd55e43045668d718f37179a1159',
        continent: 'Asia',
        country: 'Israel',
        city: 'Jerusalem',
        flag: 'israel.jpg'),
    WorldTime(
        apiDomain: 'timezone.abstractapi.com',
        locationUrl: 'v1/current_time/',
        apiKey: '5ae4cd55e43045668d718f37179a1159',
        continent: 'Asia',
        country: 'Japan',
        city: 'Tokio',
        flag: 'japan.jpg'),
    WorldTime(
        apiDomain: 'timezone.abstractapi.com',
        locationUrl: 'v1/current_time/',
        apiKey: '5ae4cd55e43045668d718f37179a1159',
        continent: 'Asia',
        country: 'Singapore',
        city: 'Singapore (Pioneer)',
        flag: 'singapore.jpg'),
    WorldTime(
        apiDomain: 'timezone.abstractapi.com',
        locationUrl: 'v1/current_time/',
        apiKey: '5ae4cd55e43045668d718f37179a1159',
        continent: 'Asia',
        country: 'South Korea',
        city: 'Seoul',
        flag: 'south_korea.jpg'),
    WorldTime(
        apiDomain: 'timezone.abstractapi.com',
        locationUrl: 'v1/current_time/',
        apiKey: '5ae4cd55e43045668d718f37179a1159',
        continent: 'Asia',
        country: 'Taiwan',
        city: 'Taipei',
        flag: 'taiwan.jpg'),
    WorldTime(
        apiDomain: 'timezone.abstractapi.com',
        locationUrl: 'v1/current_time/',
        apiKey: '5ae4cd55e43045668d718f37179a1159',
        continent: 'Asia',
        country: 'Turkey',
        city: 'Istanbul',
        flag: 'turkey.jpg'),
    WorldTime(
        apiDomain: 'timezone.abstractapi.com',
        locationUrl: 'v1/current_time/',
        apiKey: '5ae4cd55e43045668d718f37179a1159',
        continent: 'Europe',
        country: 'Austria',
        city: 'Vienna',
        flag: 'austria.jpg'),
    WorldTime(
        apiDomain: 'timezone.abstractapi.com',
        locationUrl: 'v1/current_time/',
        apiKey: '5ae4cd55e43045668d718f37179a1159',
        continent: 'Europe',
        country: 'Denmark',
        city: 'Copenhagen',
        flag: 'denmark.jpg'),
    WorldTime(
        apiDomain: 'timezone.abstractapi.com',
        locationUrl: 'v1/current_time/',
        apiKey: '5ae4cd55e43045668d718f37179a1159',
        continent: 'Europe',
        country: 'Finland',
        city: 'Helsinki',
        flag: 'finland.jpg'),
    WorldTime(
        apiDomain: 'timezone.abstractapi.com',
        locationUrl: 'v1/current_time/',
        apiKey: '5ae4cd55e43045668d718f37179a1159',
        continent: 'Europe',
        country: 'France',
        city: 'Paris',
        flag: 'france.jpg'),
    WorldTime(
        apiDomain: 'timezone.abstractapi.com',
        locationUrl: 'v1/current_time/',
        apiKey: '5ae4cd55e43045668d718f37179a1159',
        continent: 'Europe',
        country: 'Germany',
        city: 'Berlin',
        flag: 'germany.jpg'),
    WorldTime(
        apiDomain: 'timezone.abstractapi.com',
        locationUrl: 'v1/current_time/',
        apiKey: '5ae4cd55e43045668d718f37179a1159',
        continent: 'Europe',
        country: 'Poland',
        city: 'Warsaw',
        flag: 'poland.jpg'),
    WorldTime(
        apiDomain: 'timezone.abstractapi.com',
        locationUrl: 'v1/current_time/',
        apiKey: '5ae4cd55e43045668d718f37179a1159',
        continent: 'Europe',
        country: 'Spain',
        city: 'Barcelona',
        flag: 'spain.jpg'),
    WorldTime(
        apiDomain: 'timezone.abstractapi.com',
        locationUrl: 'v1/current_time/',
        apiKey: '5ae4cd55e43045668d718f37179a1159',
        continent: 'Europe',
        country: 'United Kingdom',
        city: 'London',
        flag: 'uk.jpg'),
    WorldTime(
        apiDomain: 'timezone.abstractapi.com',
        locationUrl: 'v1/current_time/',
        apiKey: '5ae4cd55e43045668d718f37179a1159',
        continent: 'Europe',
        country: 'Ukraine',
        city: 'Kyiv',
        flag: 'ukraine.jpg'),
    WorldTime(
        apiDomain: 'timezone.abstractapi.com',
        locationUrl: 'v1/current_time/',
        apiKey: '5ae4cd55e43045668d718f37179a1159',
        continent: 'North America',
        country: 'Canada',
        city: 'Toronto',
        flag: 'canada.jpg'),
    WorldTime(
        apiDomain: 'timezone.abstractapi.com',
        locationUrl: 'v1/current_time/',
        apiKey: '5ae4cd55e43045668d718f37179a1159',
        continent: 'North America',
        country: 'United States',
        city: 'New York',
        flag: 'usa.jpg'),
    WorldTime(
        apiDomain: 'timezone.abstractapi.com',
        locationUrl: 'v1/current_time/',
        apiKey: '5ae4cd55e43045668d718f37179a1159',
        continent: 'North America',
        country: 'Mexico',
        city: 'Mexico City',
        flag: 'mexico.jpg'),
    WorldTime(
        apiDomain: 'timezone.abstractapi.com',
        locationUrl: 'v1/current_time/',
        apiKey: '5ae4cd55e43045668d718f37179a1159',
        continent: 'Oceania',
        country: 'Australia',
        city: 'Melbourn',
        flag: 'australia.jpg'),
    WorldTime(
        apiDomain: 'timezone.abstractapi.com',
        locationUrl: 'v1/current_time/',
        apiKey: '5ae4cd55e43045668d718f37179a1159',
        continent: 'Oceania',
        country: 'New Zealand',
        city: 'Auckland',
        flag: 'new_zealand.jpg'),
    WorldTime(
        apiDomain: 'timezone.abstractapi.com',
        locationUrl: 'v1/current_time/',
        apiKey: '5ae4cd55e43045668d718f37179a1159',
        continent: 'Oceania',
        country: 'Marshal Islands',
        city: 'Majuro',
        flag: 'marshal_islands.jpg'),
    WorldTime(
        apiDomain: 'timezone.abstractapi.com',
        locationUrl: 'v1/current_time/',
        apiKey: '5ae4cd55e43045668d718f37179a1159',
        continent: 'Oceania',
        country: 'Samoa',
        city: 'Apia',
        flag: 'samoa.jpg'),
    WorldTime(
        apiDomain: 'timezone.abstractapi.com',
        locationUrl: 'v1/current_time/',
        apiKey: '5ae4cd55e43045668d718f37179a1159',
        continent: 'Oceania',
        country: 'Solomon Islands',
        city: 'Honiara',
        flag: 'solomon_islands.jpg'),
    WorldTime(
        apiDomain: 'timezone.abstractapi.com',
        locationUrl: 'v1/current_time/',
        apiKey: '5ae4cd55e43045668d718f37179a1159',
        continent: 'South America',
        country: 'Brasil',
        city: 'Sao Paulo',
        flag: 'brasil.jpg'),
    WorldTime(
        apiDomain: 'ipgeolocation.abstractapi.com',
        locationUrl: 'v1/',
        apiKey: '2a8a50cebcf24b05a136da317fc5c7fe',
        continent: '',
        country: 'Go Back to Your Location',
        city: '',
        flag: 'uk.jpg'),
  ];
  void updateTime(index) async {
    WorldTime chosenLocation = locations[index];
    await chosenLocation.getDataFromApi();
    Navigator.pop(context, {
      'apiDomain': chosenLocation.apiDomain,
      'locationUrl': chosenLocation.locationUrl,
      'apiKey': chosenLocation.apiKey,
      'continent': chosenLocation.continent,
      'country': chosenLocation.country,
      'city': chosenLocation.city,
      'flag': chosenLocation.flag,
      'time': chosenLocation.time,
      'isIpGeo': chosenLocation.isIpGeo,
      'dayPart': chosenLocation.dayPart,
    });
    // print('====> loading | continent: ${chosenLocation.continent}');
    // print('====> loading | country: ${chosenLocation.country}');
    // print('====> loading | city: ${chosenLocation.city}');
    // print('====> loading | flag: ${chosenLocation.flag}');
    // print('====> loading | time: ${chosenLocation.time}');
    // print('====> loading | isIpGeo: ${chosenLocation.isIpGeo}');
    // print('====> loading | dayPart: ${chosenLocation.dayPart}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2.0, vertical: 2.0),
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
