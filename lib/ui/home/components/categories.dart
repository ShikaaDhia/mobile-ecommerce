import 'package:floapp/consts.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  // untuk inisialisasi viewPager
  List<String> categories = [
    "Tops",
    "Unders",
    "Shoes"
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: SizedBox(
        height: 25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        // untk menampung data yg akan ditampilkan di UI/screen
        itemBuilder: (context, index) => _buildCategory(index),
      ),
      ),
    );
  }

  GestureDetector _buildCategory(int index) {
    return GestureDetector(
    onTap: () {
      setState(() {
        selectedIndex = index;
      });
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60),
      child: Column(
        children: [
          Text(
                  categories[index],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: selectedIndex == index ? primaryColor : secondaryColor
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 3
                ),
                height: 2,
                width: 30,
                color: selectedIndex == index ? primaryColor : secondaryColor,
              )
        ],
      ),
    ),
    );
  }
}