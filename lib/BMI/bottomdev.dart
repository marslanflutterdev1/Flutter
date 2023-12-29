import 'package:flutter/material.dart';

class BottomDev extends StatelessWidget {
  BottomDev({super.key, required this.contexted, required this.by});
  String contexted;
  String by;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.95,
      height: MediaQuery.of(context).size.height * 0.2,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 43, 64, 71),
        border: Border.all(color: Colors.white38, width: 3),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Center(
          child: Text(
            contexted,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
       const SizedBox(height: 10,),
        Center(
          child: Text(
            by,
            style: const TextStyle(color: Colors.white70, fontSize: 20),
          ),
        ),
      ]),
    );
  }
}
