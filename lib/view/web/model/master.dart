import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Master {
  const Master({
    required this.image,
    required this.name,
    required this.minutes,
  });

  final IconData image;
  final String name;
  final String minutes;

  static List<Master> getMaster() {
    return const [
      Master(
          image: Icons.access_alarm,
          name: 'Sangeetha',
          minutes: '42 mins'),
      Master(
          image: Icons.access_alarm,
          name: 'Sangeetha',
          minutes: '42 mins'),
      Master(
          image: Icons.access_alarm,
          name: 'Sangeetha',
          minutes: '42 mins'),
      Master(
          image: Icons.access_alarm,
          name: 'Sangeetha',
          minutes: '42 mins'),
      Master(
          image: Icons.access_alarm,
          name: 'Sangeetha',
          minutes: '42 mins'),
      Master(
          image: Icons.access_alarm,
          name: 'Sangeetha',
          minutes: '42 mins'),
      Master(
          image: Icons.access_alarm,
          name: 'Sangeetha',
          minutes: '42 mins'),
    ];
  }
}