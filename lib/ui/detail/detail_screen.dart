
import 'package:floapp/consts.dart';
import 'package:floapp/models/products.dart';
import 'package:floapp/ui/detail/components/add_to_cart.dart';
import 'package:floapp/ui/detail/components/cart_counter.dart';
import 'package:floapp/ui/detail/components/color_and_size.dart';
import 'package:floapp/ui/detail/components/description.dart';
import 'package:floapp/ui/detail/components/fav_button.dart';
import 'package:floapp/ui/detail/components/product_title.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: product.color,
      appBar: AppBar(
        backgroundColor: product.color,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {}, 
            icon: const Icon(Icons.favorite_border_outlined)
          ),
          IconButton(
            onPressed: () {}, 
            icon: const Icon(Icons.shopping_cart_outlined)
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
             
              child: Stack(
                children: [
                  Container(
                    // Take 30% of the screen height
                    margin: EdgeInsets.only(top: size.height * 0.33),
                    padding: const EdgeInsets.symmetric(
                      horizontal: defaultPadding,
                      vertical: defaultPadding, // Adjust padding for better spacing
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24)
                      )
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20),
                        ColorAndSize(product: product),
                        const SizedBox(height: defaultPadding),
                        Description(product: product),
                        const SizedBox(height: defaultPadding),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CartCounter(),
                            FavButton()
                          ],
                        ),
                        const SizedBox(height: defaultPadding),
                        AddToCart(product: product)
                      ],
                    ),
                  ),
                  // Product Image placed on top of the container
                  Positioned( //widget yang berguna ketika anda mengatur letak widget secara 
                              //spesifik dalam layar saat menggunakan stack
                    top: 20,
                    left: 20,
                    right: 0,
                    child:  ProductTitle(product: product),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}