// import 'package:flutter/material.dart';
// import 'package:flutter_dotenv/flutter_dotenv.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'dart:async';

// class SpeedLimit extends StatefulWidget {
//   const SpeedLimit({Key? key}) : super(key: key);

//   @override
//   State<SpeedLimit> createState() => _SpeedLimitState();
// }

// class _SpeedLimitState extends State<SpeedLimit> {
//   late Timer _timer;
//   var _isRunning = false;

//   var lat;
//   var long;
//   var speed;
//   var speedLimit;
//   var speedCheck;
//   var roadName;

//   @override
//   void initState() async {
//     super.initState();
//     await dotenv.load();
//   }

//   @override
//   void dispose() {
//     _timer?.cancel();
//     super.dispose();
//   }

//   void _clickButton() {
//     _isRunning = !_isRunning;
//     if (_isRunning) {
//       _timer = Timer.periodic(Duration(seconds: 1), (timer) async {
//         await Geolocator.requestPermission();

//         Position position = await Geolocator.getCurrentPosition(
//           desiredAccuracy: LocationAccuracy.high,
//         );

//         lat = position.latitude;
//         long = position.longitude;

//         var userAppKey = dotenv.env['appKey'];
//         var url =
//             'https://apis.openapi.sk.com/tmap/road/nearToRoad?version=1&appKey=$userAppKey&lat=$lat&lon=$long';
//         var response = await http.get(Uri.parse(url));

//         if (response.statusCode == 200) {
//           Map<String, dynamic> data = jsonDecode(response.body);
//           setState(() {
//             lat = position.latitude;
//             long = position.longitude;
//             speed = position.speed;
//             speedLimit = data['resultData']['header']['speed'];
//             speedCheck = (speed > speedLimit.toDouble()) ? '과속O' : '과속X';
//             roadName = data['resultData']['header']['roadName'];
//           });
//           print(data);
//         } else {
//           print('API 요청 실패: ${response.statusCode}');
//         }
//       });
//     } else {
//       _pause();
//     }
//   }

//   void _pause() {
//     _timer?.cancel();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return 
//                 [lat, long,
//                 speed,
//                 speedLimit,
//                 speedCheck,
//                 roadName]
             
//   }
// }
