import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sweet/body/body.dart';
import 'package:sweet/body/homebottombar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: BuildAppBar(),
        body: Body(),
        bottomNavigationBar: BottomNavigationWidget());
  }

  AppBar BuildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios),
        color: Colors.black,
        onPressed: () {},
      ),
      centerTitle: true,
      title: Text(
        "Sweets",
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.sort_outlined),
          color: Colors.black,
          onPressed: () {},
        ),
      ],
    );
  }
}