import 'package:flutter/material.dart';
import 'package:ramesh_flutter_internship/utilities/size_config.dart';
import 'home_screen.dart';

void main() {
  runApp(
    LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: ((context, orientation) {
            SizeConfig().init(constraints, orientation);
            return const MyApp();
          }),
        );
      },
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // remove mark debug
      debugShowCheckedModeBanner: false,
      // create home page
      home: HomeScreen(),
    );
  }
}
