import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  dynamic data = {};
  @override
  Widget build(BuildContext context) {
    data = data.isEmpty ? ModalRoute.of(context)?.settings.arguments : data;
    // print('====> home | DATA: $data');
    // final apiDomain = data['apiDomain'];
    // final locationUrl = data['locationUrl'];
    // final apiKey = data['apiKey'];
    final continent = data['continent'];
    final country = data['country'];
    final city = data['city'];
    final flag = data['flag'];
    final time = data['time'];
    bool isIpGeo = data['isIpGeo'];
    String dayPart = data['dayPart'];
    String bgImage = '$dayPart.jpg';
    Color bgColor = dayPart == true ? Colors.lightBlue : Colors.deepPurple;
    // print('====> home | continent: $continent');
    // print('====> home | country: $country');
    // print('====> home | city: $city');
    // print('====> home | flag: $flag');
    // print('====> home | time: $time');
    // print('====> home | isIpGeo: $isIpGeo');
    // print('====> home | dayPart: $dayPart');

    return Scaffold(
        backgroundColor: bgColor,
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/$bgImage'),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 80, 0, 0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    TextButton.icon(
                        style:
                            TextButton.styleFrom(foregroundColor: Colors.white),
                        onPressed: () async {
                          dynamic result =
                              await Navigator.pushNamed(context, '/location');
                          setState(() {
                            data = {
                              'city': result['city'],
                              'continent': result['continent'],
                              'country': result['country'],
                              'flag': result['flag'],
                              'time': result['time'],
                              'isIpGeo': result['isIpGeo'],
                              'dayPart': result['dayPart'],
                            };
                          });
                        },
                        icon: const Icon(Icons.edit_location),
                        label: const Text(
                          "Change City",
                          style: TextStyle(
                            fontFamily: 'Genos',
                            fontSize: 26,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          ),
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    isIpGeo
                        ? CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 65,
                            backgroundImage:
                                const AssetImage('assets/loading.gif'),
                            child: CircleAvatar(
                              radius: 65,
                              backgroundColor: Colors.transparent,
                              backgroundImage: NetworkImage(flag),
                            ),
                          )
                        : CircleAvatar(
                            backgroundImage: AssetImage('assets/$flag'),
                            radius: 65,
                          ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          country,
                          style: const TextStyle(
                            fontFamily: 'Genos',
                            fontSize: 26,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '($continent)',
                          style: const TextStyle(
                            fontFamily: 'Genos',
                            fontSize: 26,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      city,
                      style: const TextStyle(
                        fontFamily: 'Genos',
                        fontSize: 50,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      time,
                      style: const TextStyle(
                        fontFamily: 'Genos',
                        fontSize: 100,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ]),
            ),
          ),
        ));
  }
}
