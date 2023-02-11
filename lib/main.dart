import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example_only/count_provider.dart';
import 'package:provider_example_only/screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) =>count_provider(),
      child: MaterialApp(
      home: MainScreen(),
    ),
    );
  }
}
