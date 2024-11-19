import 'package:floapp/consts.dart';
import 'package:floapp/models/products.dart';
import 'package:floapp/ui/detail/detail_screen.dart';
import 'package:floapp/ui/home/components/categories.dart';
import 'package:floapp/ui/home/components/item_card.dart';
import 'package:flutter/material.dart';

class CatalogueScreen extends StatefulWidget {
  const CatalogueScreen({super.key});

  @override
  State<CatalogueScreen> createState() => _CatalogueScreenState();
}

class _CatalogueScreenState extends State<CatalogueScreen> {
  final List<Map<String, dynamic>> navItems = [
    {'icon' : Icons.home, 'label' : "Home"},
    {'icon' : Icons.favorite, 'label' : "Wishlist"},
    {'icon' : Icons.person, 'label' : "Profile"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search)
            ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_outlined)
            )
        ],
      ),
      body: Column( 
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Text(
              "Women",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30
              ),
              ),
          ),
          const Categories(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: defaultPadding,
                  crossAxisSpacing: defaultPadding,
                  childAspectRatio: 0.75
                ),
                itemCount: product.length,
                itemBuilder: (context, index) => ItemCard(
                  product: product[index],
                  press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(product:  product[index])
                      )
                    )
                  ),
              ),
            )
            )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
       items: navItems.map((item) {
        return _customBottomNavigationBar(
          Icon(item['icon']),
          item['label'],
          );
        }).toList(),


        ),
    );
  }

  BottomNavigationBarItem _customBottomNavigationBar(Widget icon, String label) {
    return BottomNavigationBarItem(
          icon: IconTheme(
            data: const IconThemeData(color: primaryColor),
            child: icon
            ),
            label: label
          );
  }
}