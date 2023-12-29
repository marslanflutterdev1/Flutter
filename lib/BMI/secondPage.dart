import 'package:flutter/material.dart';
import 'package:flutter_dev204/BMI/bottomdev.dart';
import 'package:flutter_dev204/BMI/resultdev.dart';

class SecondPage extends StatelessWidget {
   SecondPage({super.key,required this.bmi, });
   double bmi;
   
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: ResultDev(
                header: 'The Result',
                bmied: bmi,
                description: 'This is final calculation of bmi',
              )),
             const SizedBox(height: 20,),
              GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: BottomDev(
                  contexted: 'Go Back Home',
                  by: 'Developed By : Muhammad Arslan',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
