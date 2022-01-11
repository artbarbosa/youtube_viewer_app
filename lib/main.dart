import 'package:flutter/material.dart';

import 'src/views/home/home_page.dart';

void main() {
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Youtube View',
      theme: ThemeData.dark().copyWith(brightness: Brightness.dark),
      home: const HomePage(),
    );
  }
}
