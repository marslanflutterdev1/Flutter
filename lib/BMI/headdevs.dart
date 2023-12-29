// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class HeadDevs extends StatelessWidget {
  HeadDevs({super.key, required this.icon, required this.labalName});
  IconData icon;
  String labalName;

  @override
  Widget build(BuildContext context) {
    double widthed = MediaQuery.of(context).size.width * 0.5;
    double heighted = MediaQuery.of(context).size.height * 0.22;

    return Container(
      margin: const EdgeInsets.all(10.0),
      width: widthed,
      height: heighted,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 43, 64, 71),
          border: Border.all(color: Colors.white38, width: 3),
          borderRadius: BorderRadius.circular(5)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 90,
              color: Colors.black,
            ),
            Text(
              labalName,
              style: const TextStyle(color: Colors.white70, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
