import 'package:flutter/material.dart';
import 'package:persional_project/screens/detail.dart';
import 'package:persional_project/screens/home_screen.dart';
import 'package:persional_project/screens/menubar.dart';
import 'package:persional_project/screens/playlist.dart';
import 'package:persional_project/screens/pleng.dart';

class app extends StatelessWidget {
  const app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:pleng(),

      debugShowCheckedModeBanner: false,

    );
  }
}
