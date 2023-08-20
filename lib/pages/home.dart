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
    final continent = data['continent'];
    final country = data['country'];
    final city = data['city'];
    final flag = data['flag'];
    final time = data['time'];
    bool isIpGeo = data['isIpGeo'];
    String dayPart = data['dayPart'];
    String bgImage = '$dayPart.jpg';
    String info = data['info'];
    Color bgColor;

    bgColor = dayPart == 'sunrise'
        ? const Color(0xff648CBC)
        : dayPart == 'midday'
            ? const Color(0xff13689f)
            // ? const Color(0xff13689f)
            : dayPart == 'sunset'
                ? const Color(0xfffae2d7)
                : dayPart == 'night1'
                    ? const Color(0xff787681)
                    : const Color(0xff103643);
    Color txtColor;
    txtColor = dayPart == 'sunrise'
        ? const Color(0xffEEECE6)
        : dayPart == 'midday'
            ? const Color(0xffffe972)
            : dayPart == 'sunset'
                ? const Color(0xfffae2d7)
                : dayPart == 'night1'
                    ? const Color(0xfff4d197)
                    : const Color(0xffcfe9ff);
    Color shadowColor;
    shadowColor = dayPart == 'sunrise'
        ? const Color(0xff2E2B0E)
        : dayPart == 'midday'
            ? const Color(0xff36607D)
            : dayPart == 'sunset'
                ? const Color(0xff5a537d)
                : dayPart == 'night1'
                    ? const Color(0xff020609)
                    : const Color(0xff1C424E);

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
              padding: const EdgeInsets.fromLTRB(10, 80, 10, 0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    TextButton.icon(
                        style: TextButton.styleFrom(foregroundColor: txtColor),
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
                              'info': result['info'],
                            };
                          });
                        },
                        icon: Icon(
                          Icons.edit_location,
                          shadows: <Shadow>[
                            Shadow(color: shadowColor, blurRadius: 10.0)
                          ],
                        ),
                        label: Text(
                          "Change City",
                          style: TextStyle(
                            fontFamily: 'Genos',
                            fontSize: 30,
                            fontWeight: FontWeight.normal,
                            color: txtColor,
                            shadows: [
                              Shadow(
                                blurRadius: 10.0,
                                color: shadowColor,
                                offset: const Offset(1.0, 2.0),
                              ),
                            ],
                          ),
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    isIpGeo
                        ? Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(65.0),
                                boxShadow: [
                                  BoxShadow(
                                      color: shadowColor, blurRadius: 10.0)
                                ]),
                            child: CircleAvatar(
                              backgroundColor: txtColor,
                              radius: 65,
                              backgroundImage:
                                  const AssetImage('assets/loading.gif'),
                              child: CircleAvatar(
                                radius: 65,
                                backgroundColor: Colors.transparent,
                                backgroundImage: NetworkImage(flag),
                              ),
                            ),
                          )
                        : Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(65.0),
                                boxShadow: [
                                  BoxShadow(
                                      color: shadowColor, blurRadius: 10.0)
                                ]),
                            child: CircleAvatar(
                              backgroundImage: AssetImage('assets/$flag'),
                              radius: 65,
                            ),
                          ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          country,
                          style: TextStyle(
                            fontFamily: 'Genos',
                            fontSize: 30,
                            fontWeight: FontWeight.normal,
                            color: txtColor,
                            shadows: [
                              Shadow(
                                blurRadius: 10.0,
                                color: shadowColor,
                                offset: const Offset(1.0, 2.0),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          '($continent)',
                          style: TextStyle(
                            fontFamily: 'Genos',
                            fontSize: 30,
                            fontWeight: FontWeight.normal,
                            color: txtColor,
                            shadows: [
                              Shadow(
                                blurRadius: 10.0,
                                color: shadowColor,
                                offset: const Offset(1.0, 2.0),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      city,
                      style: TextStyle(
                        fontFamily: 'Genos',
                        fontSize: 40,
                        fontWeight: FontWeight.normal,
                        color: txtColor,
                        shadows: [
                          Shadow(
                            blurRadius: 10.0,
                            color: shadowColor,
                            offset: const Offset(2.0, 3.0),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      time,
                      style: TextStyle(
                        fontFamily: 'Genos',
                        fontSize: 100,
                        fontWeight: FontWeight.bold,
                        color: txtColor,
                        shadows: [
                          Shadow(
                            blurRadius: 20.0,
                            color: shadowColor,
                            offset: const Offset(2.0, 3.0),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      info,
                      style: TextStyle(
                        fontFamily: 'Genos',
                        fontSize: 26,
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.italic,
                        color: txtColor,
                        shadows: [
                          Shadow(
                            blurRadius: 10.0,
                            color: shadowColor,
                            offset: const Offset(1.0, 2.0),
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
          ),
        ));
  }
}
