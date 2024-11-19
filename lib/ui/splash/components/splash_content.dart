import 'package:floapp/size_config.dart';
import 'package:floapp/consts.dart';
import 'package:flutter/material.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    super.key, required this.text, required this.image,
  });
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Text(
          "Clothlon",
          style: TextStyle(
            color: primaryColor,
            fontSize: getProportionateScreenW(36.0), // Ukuran font tetap
          ),
        ),
        Text(
          // Teks di tengah
          text,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20), // Menambahkan jarak antara teks dan gambar
        Image.asset(
          image,
          width: 300, // Ukuran gambar yang lebih kecil
          height: 300, // Sesuaikan tinggi jika diperlukan
        ),
        const Spacer(), // Untuk menambah spasi antara gambar dan elemen berikutnya
      ],
    );
  }
}
