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
  String? price;
  double sliderValue = 0.0;
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
              ),
              RadioListTile(
                title: Text('Radio button 1'),
                value: '100',
                groupValue: price,
                onChanged: ((value) {
                  setState(() {
                    price = value.toString();
                  });
                }),
              ),
              RadioListTile(
                title: Text('Radio button 2'),
                value: '200',
                groupValue: price,
                onChanged: ((value) {
                  setState(() {
                    price = value.toString();
                  });
                }),
              ),
              ElevatedButton(
                  onPressed: () {
                    print(price);
                  },
                  child: Text('Get Radio')),
              Slider(
                  value: sliderValue,
                  onChanged: ((value) {
                    print(value);
                  }))
            ],
          ),
        ),
      ),
    );
  }
}
