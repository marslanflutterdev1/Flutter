import 'package:flutter/material.dart';

class CountingApp extends StatefulWidget {
  const CountingApp({super.key});

  @override
  State<CountingApp> createState() => _CountingAppState();
}

class _CountingAppState extends State<CountingApp> {
   int count = 0;
  @override
  Widget build(BuildContext context) {
   

    // This one is counting methods
    counter() {
      setState(() {
        count++;
      });
    }

    // This one is reseting zero values
    reset() {
      setState(() {
        count = 0;
      });
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: const Text(
          'The Counting App',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '$count',
                style:
                    const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30,),
              Row(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.lightBlue)),
                        onPressed: counter,
                        child: const Text(
                          'Counts',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        )),
                    const SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                        style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.lightBlue)),
                        onPressed: reset,
                        child: const Text(
                          'Reset',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ))
                  ]),
            ]),
      ),
      floatingActionButton: const FloatingActionButton(
          onPressed: null,
          child: Icon(
            Icons.add,
          )),
      bottomNavigationBar: const BottomAppBar(
        child: Center(
          child: Text(
            'Developed By: Muhammad Arslan',
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
