// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Changerdev extends StatefulWidget {
  Changerdev(
      {super.key,
      required this.labalName,
      required this.add,
      required this.minus});
  String labalName;
  IconData add;
  IconData minus;

  @override
  State<Changerdev> createState() => _ChangerdevState();
}

class _ChangerdevState extends State<Changerdev> {
  int count = 1;

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
            Text(
              widget.labalName,
              style: const TextStyle(color: Colors.white70, fontSize: 20),
            ),
            Text(
              '$count',
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton.outlined(
                    onPressed: () {
                      setState(() {
                        if (count == 0) {
                          count = 1;
                        } else {
                          count++;
                        }
                      });
                    },
                    icon: Icon(widget.add, size: 25, color: Colors.white70)),
                const SizedBox(
                  width: 20,
                ),
                IconButton.outlined(
                    onPressed: () {
                      setState(() {
                        if (count == 0) {
                          count = 1;
                        } else {
                          count--;
                        }
                      });
                    },
                    icon: Icon(
                      widget.minus,
                      size: 25,
                      color: Colors.white70,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
