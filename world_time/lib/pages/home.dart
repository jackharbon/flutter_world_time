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
    data = data.isNotEmpty ? data : ModalRoute.of(context)?.settings.arguments;
    final locationUrl = data['locationUrl'];
    final city = data['city'];
    final flag = data['flag'];
    final time = data['time'];
    bool isDaytime = data['isDaytime'];
    String bgImage = isDaytime == true ? 'day.jpg' : 'night.jpg';
    Color bgColor = isDaytime == true ? Colors.lightBlue : Colors.deepPurple;
    print('=====>  Data on home: $data');

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
              padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    TextButton.icon(
                        style: TextButton.styleFrom(
                            foregroundColor: Colors.white54),
                        onPressed: () async {
                          dynamic result =
                              await Navigator.pushNamed(context, '/location');
                          setState(() {
                            data = {
                              'city': result['city'],
                              'flag': result['flag'],
                              'time': result['time'],
                              'isDaytime': result['isDaytime'],
                            };
                          });
                        },
                        icon: const Icon(Icons.edit_location),
                        label: const Text("Edit city")),
                    const SizedBox(
                      height: 20,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/$flag'),
                      radius: 60.0,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          city,
                          // 'placeholder',
                          style: const TextStyle(
                            fontFamily: 'Genos',
                            fontSize: 50,
                            fontWeight: FontWeight.normal,
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      time,
                      style: const TextStyle(
                        fontFamily: 'Genos',
                        fontSize: 60,
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
