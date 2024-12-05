import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CommonScreen extends StatefulWidget {
  const CommonScreen({super.key});

  @override
  State<CommonScreen> createState() => _CommonScreenState();
}

class _CommonScreenState extends State<CommonScreen> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("count: $_counter"),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _counter++;
                });
              },
              child: const Text('Increment'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _counter--;
                });
              },
              child: const Text('Decrement'),
            ),
          ],
        ),
      ),
    );
  }
}
