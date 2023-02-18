

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example_only/count_provider.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    print("Full Build");
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Provider"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<count_provider>().set_count();
        },
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Consumer<count_provider>(
          builder: (context, value, child){
            print("Widget is build only");
            return Text(
              '${value.get_count}',
              style: TextStyle(
                fontSize: 56,
              ),
            );
          }),
        )
      );

  }
}
