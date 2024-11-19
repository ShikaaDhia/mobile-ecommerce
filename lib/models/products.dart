import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int  price, size, id;
  final Color color;

  // untk mendefinisikan final var yg sudah kita buat
  Product({
    // this untk menandakan bahwa objek terkait hanya bisa diakses oleh class terkait
    // atau class yg sebelumnya memanggil class product.
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Product> product = [
  Product(
      id: 1,
      title: "Hoodie Valentines",
      price: 1500,
      size: 12,
      description: 'Lorem ipsum dolar amet',
      image: "assets/images/adidas-valentine.png",
      color: const Color(0xF0F0F0F0)),
  Product(
      id: 2,
      title: "Z.N.E. Hoodie Winterized",
      price: 750,
      size: 8,
      description: 'Lorem ipsum dolar amet',
      image: "assets/images/hoodie-winterized.png",
      color: const Color(0xF0F0F0F0)),
  Product(
      id: 3,
      title: "Future Icons 3-Stripes Hoodie",
      price: 234,
      size: 10,
      description:'Lorem ipsum dolar amet' ,
      image: "assets/images/futureicons3-stripeshoodie.png",
      color: const Color(0xF0F0F0F0)),
  Product(
      id: 4,
      title: "Track Top Adicolor Classics SST",
      price: 1400,
      size: 11,
      description: 'Lorem ipsum dolar amet',
      image: "assets/images/tracktopadicolorclassicssst.png",
      color: const Color(0xF0F0F0F0)),
  Product(
      id: 3,
      title: "3-Stripes Crew Sweatshirt",
      price: 1200,
      size: 10,
      description: 'Lorem ipsum dolar amet',
      image: "assets/images/3-stripescrewsweatshirt.png",
      color: const Color(0xF0F0F0F0)),
  Product(
      id: 4,
      title: "Polo Shirt ALL SZN French Terry",
      price: 520,
      size: 11,
      description: 'Lorem ipsum dolar amet',
      image: "assets/images/poloshirtallsznfrenchterry.png",
      color: const Color(0xF0F0F0F0)),
];