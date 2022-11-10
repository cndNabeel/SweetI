import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:sweet/body/categorieslist.dart';
import 'package:sweet/body/products.dart';
import 'package:sweet/constants.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(children: [
        CategoryList(),
        SizedBox(
          height: 10,
        ),
        Expanded(child: Product()),
      ]),
    );
  }
}