import 'package:flutter/material.dart';

class ResultDev extends StatefulWidget {
  ResultDev({
    super.key,
    required this.header,
    required this.bmied,
    required this.description,
  });

  String header;
  double bmied;
  String description;

  @override
  State<ResultDev> createState() => _MidDevState();
}

class _MidDevState extends State<ResultDev> {
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // const SizedBox(height: 5),
            Center(
              child: Text(
                widget.header,
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 50,
                ),
              ),
            ),

             Center(
              child: Text(
                widget.bmied.toString(),
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 90,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Text(
                widget.description,
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
