import 'package:floapp/consts.dart';
import 'package:floapp/models/products.dart';
import 'package:flutter/material.dart';

class ProductTitle extends StatelessWidget {
  const ProductTitle({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size; // ngambil sesuai ukuran layarnya masing"

    // mendefinisikan ukuran proposional gambar sebagai var const
    const double imageWidthRatio = 0.5; // 35% dari lebar layar
    const double imageHeightRatio = 0.20; // ngambil 20% dari tinggi layar

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Column(
        children: [
          const Text(
            "Tops",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            product.title,
            style: const TextStyle(
                color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: defaultPadding),
           Row(
             children: [
               Column(
                children: [
                 const Text(
                    "Price",
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    "${product.price}",
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold
                      ),
                  ),
                ],
                ),
                const SizedBox(width: defaultPadding),
                Hero(
                  tag: "${product.id}",
                  child: Image.asset(
                    product.image,
                    width: size.width * imageWidthRatio, // gunakan rasio untuk lebar gambar
                    height: size.height * imageHeightRatio, // gunakan rasio untuk tinggi gambar
                    fit: BoxFit.contain, // ensure proper scaling
                  )
                  )
             ],
           )
        ],
      ),
    );
  }
}
