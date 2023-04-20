import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

class NavigationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: loadConfig(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final config = snapshot.data;
          return Column(children: _renderIcon(config),);
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }

  List<Widget> _renderIcon(data){
    var result = <Widget>[];
    for (var i = 0; i < data.length; i++) {
      result.add(
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Image.asset(
            "assets/images/${data[i]['icon']}",
            width: 40,
            height: 40,
          ),
        )
      );
    }
    return result;
  }
}


Future<List> loadConfig() async {
  final configString = await rootBundle.loadString('assets/config/navigation.json');
  return json.decode(configString);
}