import 'package:flutter/material.dart';
import 'package:sweet/constants.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectedIndex = 0;
  List categories = ["All", "Chocolates", "Biscuits", "Candies", "ab", "as"];
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
        height: 30,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: ((context, index) => GestureDetector(
            onTap: (() {
              setState(() {
                selectedIndex = index;
              });
            }),
            child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(left: kDefaultPadding),
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                decoration: BoxDecoration(
                    color:
                    index == selectedIndex ? Colors.blue : Colors.white,
                    borderRadius: BorderRadius.circular(6)),
                child: Text(
                  categories[index],
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                )),
          )),
        ));
  }
}

class Categories {
  final String name;

  Categories(this.name);
}