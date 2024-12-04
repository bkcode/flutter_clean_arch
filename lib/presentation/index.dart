import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_arch/routes/app_router.gr.dart';

@RoutePage()
class IndexScreen extends StatelessWidget {
  const IndexScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Index页面'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Index"),
            ElevatedButton(
                onPressed: () => {context.router.push(const SecondRoute())},
                child: const Text("toSecond"))
          ],
        ),
      ),
    );
  }
}
