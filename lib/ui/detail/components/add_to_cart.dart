import 'package:floapp/consts.dart';
import 'package:floapp/models/products.dart';
import 'package:flutter/material.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Row(
        children: <Widget>[
          // container ini untk buat tombol masukan keranjang
          Container(
            margin: const EdgeInsets.only(right: defaultPadding),
            height: 50,
            width: 54,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: const Color(0xF0F0F0F0)
              )
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add_shopping_cart)
              ),
          ),
          // untk buat button buy now
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: product.color,
                maximumSize: const Size.fromHeight(50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18)
                )
              ),
            onPressed: () {},
            child: const Text(
              "BUY NOW",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black
              ),
            )
            )
            )
        ],
      ),
      );
  }
}