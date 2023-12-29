import 'package:flutter/material.dart';

class MidDev extends StatefulWidget {
  MidDev({
    super.key,
    required this.headLabal,
    required this.start ,
    required this.cm,
  });

  String headLabal;
  double start ;
  String cm;

  @override
  State<MidDev> createState() => _MidDevState();
}
 

class _MidDevState extends State<MidDev> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.95,
      height: MediaQuery.of(context).size.height * 0.23,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 43, 64, 71),
          border: Border.all(color: Colors.white38, width: 3),
          borderRadius: BorderRadius.circular(5)),
      child: Center(
        child: Column(
          children: [
            const SizedBox(height: 5),
            Text(
              widget.headLabal,
              style: const TextStyle(color: Colors.white70, fontSize: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    widget.start.toStringAsFixed(1),
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  widget.cm,
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            Slider(
              value: widget.start,
              min: 0.0,
              max: 304.8,
              //divisions:5 ,
              activeColor: Colors.black,
              inactiveColor: Colors.white30,
              thumbColor: Colors.blueGrey,
              onChanged: (value) {
                setState(() {
                  widget.start = value;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
