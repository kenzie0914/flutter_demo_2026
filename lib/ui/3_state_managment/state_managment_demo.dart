import 'package:flutter/material.dart';

class StateManagementDemo extends StatefulWidget {
  const StateManagementDemo({super.key});

  @override
  State<StateManagementDemo> createState() => _StateManagementDemoState();
}

class _StateManagementDemoState extends State<StateManagementDemo> {
  Color boxColor = Colors.blue;
  String buttonText = "Change Color";
  String boxText = "Hello";

  void changeColor() {
    setState(() {
      boxColor = boxColor == Colors.blue ? Colors.red : Colors.green;
      buttonText = "Color Changed!";
    });
  }

  void changeBoxText() {
    setState(() {
      boxText = boxText == "Hello" ? "Flutter!" : "Hello";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("State Management"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 150,
              color: boxColor,
              alignment: Alignment.center,
              child: Text(
                boxText,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: changeColor,
              child: Text(buttonText),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: changeBoxText,
              child: const Text("Change Box Text"),
            ),
          ],
        ),
      ),
    );
  }
}

