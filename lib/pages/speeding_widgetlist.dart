// import 'package:flutter/material.dart';

// List<String> _speedingList = ["과속", "급가속", "급감속"];

// class SpeedingWidget extends StatelessWidget {
//   final List<int> events;

//   const SpeedingWidget({super.key, required this.events});

//   Widget _event(int eventNum) {
//     return Container(
//       padding: EdgeInsets.only(left: 10),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Icon(
//             Icons.car_crash,
//             size: 40,
//           ),
//           Text(_speedingList[eventNum]),
//         ],
//       ),
//       height: 60,
//       width: 100,
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         ListView.builder(
//           itemCount: events.length,
//           itemBuilder: (BuildContext context, int index) {
//             return _event(events[index]);
//           },
//           padding: EdgeInsets.only(left: 20),
//           scrollDirection: Axis.horizontal,
//         ),
//       ],
//     );
//   }
// }
