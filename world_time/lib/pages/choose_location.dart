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
        flag: 'kenya.png'),
    WorldTime(
        apiDomain: 'timezone.abstractapi.com',
        locationUrl: 'v1/current_time/',
        apiKey: '5ae4cd55e43045668d718f37179a1159',
        continent: 'Africa',
        country: 'Egypt',
        city: 'Cairo',
        flag: 'egypt.png'),
    WorldTime(
        apiDomain: 'timezone.abstractapi.com',
        locationUrl: 'v1/current_time/',
        apiKey: '5ae4cd55e43045668d718f37179a1159',
        continent: 'Asia',
        country: 'Indonesia',
        city: 'Jakarta',
        flag: 'indonesia.png'),
    WorldTime(
        apiDomain: 'timezone.abstractapi.com',
        locationUrl: 'v1/current_time/',
        apiKey: '5ae4cd55e43045668d718f37179a1159',
        continent: 'Asia',
        country: 'Israel',
        city: 'Jerusalem',
        flag: 'israel.png'),
    WorldTime(
        apiDomain: 'timezone.abstractapi.com',
        locationUrl: 'v1/current_time/',
        apiKey: '5ae4cd55e43045668d718f37179a1159',
        continent: 'Asia',
        country: 'Japan',
        city: 'Tokio',
        flag: 'japan.png'),
    WorldTime(
        apiDomain: 'timezone.abstractapi.com',
        locationUrl: 'v1/current_time/',
        apiKey: '5ae4cd55e43045668d718f37179a1159',
        continent: 'Asia',
        country: 'Singapore',
        city: 'Singapore (Pioneer)',
        flag: 'singapore.png'),
    WorldTime(
        apiDomain: 'timezone.abstractapi.com',
        locationUrl: 'v1/current_time/',
        apiKey: '5ae4cd55e43045668d718f37179a1159',
        continent: 'Asia',
        country: 'South Korea',
        city: 'Seoul',
        flag: 'south_korea.png'),
    WorldTime(
        apiDomain: 'timezone.abstractapi.com',
        locationUrl: 'v1/current_time/',
        apiKey: '5ae4cd55e43045668d718f37179a1159',
        continent: 'Asia',
        country: 'Taiwan',
        city: 'Taipei',
        flag: 'taiwan.png'),
    WorldTime(
        apiDomain: 'timezone.abstractapi.com',
        locationUrl: 'v1/current_time/',
        apiKey: '5ae4cd55e43045668d718f37179a1159',
        continent: 'Asia',
        country: 'Turkey',
        city: 'Istanbul',
        flag: 'turkey.png'),
    WorldTime(
        apiDomain: 'timezone.abstractapi.com',
        locationUrl: 'v1/current_time/',
        apiKey: '5ae4cd55e43045668d718f37179a1159',
        continent: 'Europe',
        country: 'Austria',
        city: 'Vienna',
        flag: 'austria.png'),
    WorldTime(
        apiDomain: 'timezone.abstractapi.com',
        locationUrl: 'v1/current_time/',
        apiKey: '5ae4cd55e43045668d718f37179a1159',
        continent: 'Europe',
        country: 'Denmark',
        city: 'Copenhagen',
        flag: 'denmark.png'),
    WorldTime(
        apiDomain: 'timezone.abstractapi.com',
        locationUrl: 'v1/current_time/',
        apiKey: '5ae4cd55e43045668d718f37179a1159',
        continent: 'Europe',
        country: 'Finland',
        city: 'Helsinki',
        flag: 'finland.png'),
    WorldTime(
        apiDomain: 'timezone.abstractapi.com',
        locationUrl: 'v1/current_time/',
        apiKey: '5ae4cd55e43045668d718f37179a1159',
        continent: 'Europe',
        country: 'France',
        city: 'Paris',
        flag: 'france.png'),
    WorldTime(
        apiDomain: 'timezone.abstractapi.com',
        locationUrl: 'v1/current_time/',
        apiKey: '5ae4cd55e43045668d718f37179a1159',
        continent: 'Europe',
        country: 'Germany',
        city: 'Berlin',
        flag: 'germany.png'),
    WorldTime(
        apiDomain: 'timezone.abstractapi.com',
        locationUrl: 'v1/current_time/',
        apiKey: '5ae4cd55e43045668d718f37179a1159',
        continent: 'Europe',
        country: 'Poland',
        city: 'Warsaw',
        flag: 'poland.png'),
    WorldTime(
        apiDomain: 'timezone.abstractapi.com',
        locationUrl: 'v1/current_time/',
        apiKey: '5ae4cd55e43045668d718f37179a1159',
        continent: 'Europe',
        country: 'Spain',
        city: 'Barcelona',
        flag: 'spain.png'),
    WorldTime(
        apiDomain: 'timezone.abstractapi.com',
        locationUrl: 'v1/current_time/',
        apiKey: '5ae4cd55e43045668d718f37179a1159',
        continent: 'Europe',
        country: 'United Kingdom',
        city: 'London',
        flag: 'uk.png'),
    WorldTime(
        apiDomain: 'timezone.abstractapi.com',
        locationUrl: 'v1/current_time/',
        apiKey: '5ae4cd55e43045668d718f37179a1159',
        continent: 'Europe',
        country: 'Ukraine',
        city: 'Kyiv',
        flag: 'ukraine.png'),
    WorldTime(
        apiDomain: 'timezone.abstractapi.com',
        locationUrl: 'v1/current_time/',
        apiKey: '5ae4cd55e43045668d718f37179a1159',
        continent: 'North America',
        country: 'Canada',
        city: 'Toronto',
        flag: 'canada.png'),
    WorldTime(
        apiDomain: 'timezone.abstractapi.com',
        locationUrl: 'v1/current_time/',
        apiKey: '5ae4cd55e43045668d718f37179a1159',
        continent: 'North America',
        country: 'United States',
        city: 'New York',
        flag: 'usa.png'),
    WorldTime(
        apiDomain: 'timezone.abstractapi.com',
        locationUrl: 'v1/current_time/',
        apiKey: '5ae4cd55e43045668d718f37179a1159',
        continent: 'North America',
        country: 'Mexico',
        city: 'Mexico City',
        flag: 'mexico.png'),
    WorldTime(
        apiDomain: 'timezone.abstractapi.com',
        locationUrl: 'v1/current_time/',
        apiKey: '5ae4cd55e43045668d718f37179a1159',
        continent: 'Oceania',
        country: 'Australia',
        city: 'Melbourn',
        flag: 'australia.png'),
    WorldTime(
        apiDomain: 'timezone.abstractapi.com',
        locationUrl: 'v1/current_time/',
        apiKey: '5ae4cd55e43045668d718f37179a1159',
        continent: 'Oceania',
        country: 'New Zealand',
        city: 'Auckland',
        flag: 'new_zealand.png'),
    WorldTime(
        apiDomain: 'timezone.abstractapi.com',
        locationUrl: 'v1/current_time/',
        apiKey: '5ae4cd55e43045668d718f37179a1159',
        continent: 'Oceania',
        country: 'Marshal Islands',
        city: 'Majuro',
        flag: 'marshal_islands.png'),
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
        flag: 'brasil.png'),
    WorldTime(
        apiDomain: 'ipgeolocation.abstractapi.com',
        locationUrl: 'v1/',
        apiKey: '2a8a50cebcf24b05a136da317fc5c7fe',
        continent: '',
        country: 'Go Back to Your Location',
        city: '',
        flag: 'uk.png'),
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
