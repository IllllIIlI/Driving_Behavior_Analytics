import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class SpeedometerWidget extends StatefulWidget {
  @override
  _SpeedometerWidgetState createState() => _SpeedometerWidgetState();
}

class _SpeedometerWidgetState extends State<SpeedometerWidget> {
  double _speed = 0.0;

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
  }

  Future<void> _getCurrentLocation() async {
    final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    setState(() {
      _speed = position.speed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '$_speed m/s',
        style: TextStyle(fontSize: 24.0),
      ),
    );
  }
}
