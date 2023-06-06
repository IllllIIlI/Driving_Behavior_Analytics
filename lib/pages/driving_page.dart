import 'dart:async';
import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:geolocator/geolocator.dart';
import 'package:oss_proj/pages/speeding_widgetlist.dart';

import 'driving_on_page.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

var current_hp = 100;
List<String> Comments = [
  "잘 하고 있습니다!",
  "주의가 필요합니다!",
  "조심해주세요!",
  "위험합니다!",
  "다시 배우세요!"
];
List<int> events = [];

class driving_page extends StatefulWidget {
  const driving_page({Key? key}) : super(key: key);

  @override
  State<driving_page> createState() => _driving_pageState();
}

class _driving_pageState extends State<driving_page> {
  late Timer _timer;
  var _isRunning = false;

  var lat;
  var long;
  var speed;
  var speedLimit;
  var speeding;
  var roadName;
  var prevSpeed;
  var prevTime;

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  int checkSpeeding(double speed, double acceleration) {
    if (speed > 6 && speed <= 10 && acceleration >= 12) {
      return 1;
    } else if (speed > 10 && speed <= 20 && acceleration >= 10) {
      return 1;
    } else if (speed > 20 && acceleration >= 8) {
      return 1;
    }
    return 0;
  }

  void _activaeLocator() {
    _isRunning = !_isRunning;
    if (_isRunning) {
      _timer = Timer.periodic(Duration(seconds: 1), (timer) async {
        await Geolocator.requestPermission();

        Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high,
        );

        lat = position.latitude;
        long = position.longitude;

        var userAppKey = dotenv.env['appKey'];
        var url =
            'https://apis.openapi.sk.com/tmap/road/nearToRoad?version=1&appKey=$userAppKey&lat=$lat&lon=$long';
        var response = await http.get(Uri.parse(url));

        if (response.statusCode == 200) {
          Map<String, dynamic> data = jsonDecode(response.body);
          setState(() {
            lat = position.latitude;
            long = position.longitude;
            speed = position.speed;
            speedLimit = data['resultData']['header']['speed'];
            // speeding = (speed > speedLimit.toDouble() + 20.0) ? 1 : 0;
            speeding = (speed > speedLimit.toDouble()) ? 1 : 0;
            roadName = data['resultData']['header']['roadName'];
          });
          // double acceleration = (speed - prevSpeed) /
          // (DateTime.now().millisecondsSinceEpoch - prevTime) *
          // 1000;
          // prevSpeed = speed;
          // prevTime = DateTime.now().millisecondsSinceEpoch;
          if (speeding == 1) {
            setState(() {
              current_hp -= 1;
              events.add(0);
            });
          }
          // if (checkSpeeding(speed, acceleration) == 1) {
          //   setState(() {
          //     current_hp -= 1;
          //     events.add(1);
          //   });
          // }
        } else {
          print('요청 실패: ${response.statusCode}');
        }
      });
    } else {
      _timer.cancel();
    }
  }

  // Widget _speedingWidget() {
  //   return Container(
  //     width: MediaQuery.of(context).size.width / 10 * 7,
  //     height: MediaQuery.of(context).size.height / 10 * 2,
  //     child: SpeedingWidget(events: events),
  //   );
  // }

  List<String> _speedingList = ["과속", "급가속", "급감속"];

  Widget _event(int eventNum) {
    return SizedBox(
      width: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.car_crash,
            size: 40,
          ),
          Text(_speedingList[eventNum]),
        ],
      ),
    );
  }

  Widget _Indicator(int hp) {
    int setComment = 0;
    int setImageNum = 0;

    if (hp >= 75) {
      setComment = 0;
      setImageNum = 100;
    } else if (hp >= 50) {
      setComment = 1;
      setImageNum = 75;
    } else if (hp >= 25) {
      setComment = 2;
      setImageNum = 50;
    } else {
      setComment = 3;
      setImageNum = 25;
    }

    return Column(
      children: [
        if (setComment != null)
          Text(
            Comments[setComment],
            style: TextStyle(fontSize: 30),
          ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 10 * 5,
          child: Stack(
            children: [
              Image.asset("assets/tofu_${setImageNum}.jpg"),
              Positioned(
                top: 20,
                left: MediaQuery.of(context).size.width / 100 * 40,
                child: Text(
                  "${current_hp}%",
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 70,
          child: ListView.builder(
            itemCount: events.length,
            itemBuilder: (BuildContext context, int index) {
              return _event(events[index]);
            },
            padding: EdgeInsets.only(left: 20),
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _activaeLocator();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: MaterialButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_left,
              color: Colors.black,
              size: MediaQuery.of(context).size.height / 15,
            ),
          ),
          actions: [
            MaterialButton(
                child: Icon(Icons.next_plan),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => driving_on_page()),
                  );
                })
          ],
          elevation: 0,
          backgroundColor: Color(0xffC5DFE4),
          title: Text("나의 운전 점수",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: MediaQuery.of(context).size.height / 35)),
          centerTitle: true,
        ),
        body: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _Indicator(current_hp),
              Text(
                "현재 위치: ${roadName}",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "현재 속도: ${speed}km/h",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "제한 속도: ${speedLimit}km/h",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                '과속 여부: ${speeding == 1 ? "과속" : "정상"}',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
