import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                value: isChecked,
                onChanged: (value) {
                  print(value);
                  setState(() {
                    isChecked = !isChecked;
                    print(isChecked);
                  });
                },
              ),
              Switch(
                onChanged: (value) {
                  setState(() {
                    isChecked = !isChecked;
                  });
                },
                value: isChecked,
              )
            ],
          ),
        ),
      ),
    );
  }
}
