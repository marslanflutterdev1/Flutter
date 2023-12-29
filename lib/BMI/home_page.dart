import 'package:flutter/material.dart';
import 'package:flutter_dev204/BMI/bottomdev.dart';
import 'package:flutter_dev204/BMI/changerdev.dart';
import 'package:flutter_dev204/BMI/formula.dart';
import 'package:flutter_dev204/BMI/headdevs.dart';
import 'package:flutter_dev204/BMI/middev.dart';
import 'package:flutter_dev204/BMI/secondPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: const Text(
          'BMI Calculator',
          style: TextStyle(
            color: Colors.white70,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Expanded(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                      child: HeadDevs(
                    icon: Icons.male_rounded,
                    labalName: 'Male',
                  )),
                  Expanded(
                      child: HeadDevs(
                    icon: Icons.female_rounded,
                    labalName: 'Female',
                  )),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
              MidDev(
                headLabal: 'Height',
                start: 0.0 ,
                cm: ' cm',
              ),
              Row(
                children: [
                  Expanded(
                      child: Changerdev(
                          labalName: 'Weight',
                          add: Icons.add,
                          minus: Icons.minimize)),
                  Expanded(
                      child: Changerdev(
                          labalName: 'Age',
                          add: Icons.add,
                          minus: Icons.minimize))
                ],
              ),
              Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Formula formula = Formula();
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage(
                        bmi: formula.bmi() ,
                      )));
                    },
                      child: BottomDev(
                          contexted: 'Calculate',
                          by: 'Developed By : Muhammad Arslan')))
            ],
          ),
        ),
      ),
    );
  }
}
