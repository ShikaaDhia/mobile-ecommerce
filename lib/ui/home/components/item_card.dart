import 'package:floapp/models/products.dart';
import 'package:floapp/consts.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key, required this.product, required this.press});

  final Product product;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(defaultPadding),
              decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(16)
              ),
              child: Hero(
                tag: "${product.id}",
                child: Image.asset(product.image)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: Text(
              product.title,
              style: const TextStyle(color: Color.fromARGB(255, 123, 46, 46)),
            ),
          ),
          Text(
            "Rp ${product.price}",
            style: const TextStyle(color: Colors.black),
          )
        ],
      ),
    );
  }
}