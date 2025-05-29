import 'package:flutter/material.dart';
import 'package:quiz_app/presentation_layer/widgets/custom_drawer.dart';
import 'package:quiz_app/presentation_layer/widgets/main_screen_items.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 76, 207, 144),
          title: Text(
            "Quizdom",
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
              fontSize: 21,
              letterSpacing: 1.0,
              color: Colors.black87,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),

        drawer: MyDrawer(),
        body: Column(children: [MainScreenItems()]),
      ),
    );
  }
}
