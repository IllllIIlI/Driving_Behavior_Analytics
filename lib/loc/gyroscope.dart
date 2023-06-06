import 'package:flutter/material.dart';
import 'package:sensors_plus/sensors_plus.dart';

class gyro extends StatefulWidget {
  const gyro({Key? key}) : super(key: key);

  @override
  State<gyro> createState() => _gyroState();
}

class _gyroState extends State<gyro> {
  List<double>? _gyroscopeValues;

  @override
  void initState() {
    super.initState();
    gyroscopeEvents.listen(
      (GyroscopeEvent event) {
        setState(() {
          _gyroscopeValues = <double>[event.x, event.y, event.z];
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Gyroscope Data'),
        Text('${_gyroscopeValues?[0].toStringAsFixed(2)} '
            '${_gyroscopeValues?[1].toStringAsFixed(2)} '
            '${_gyroscopeValues?[2].toStringAsFixed(2)}'),
      ],
    );
  }
}
