import 'package:flutter/material.dart';
import 'package:games/ui/home_layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
     //backgroundColor: Colors.deepOrangeAccent,
     backgroundColor: Colors.amber,
      body: HomeLayout(),
      
    );
  }
}