import 'package:floapp/consts.dart';
import 'package:floapp/models/products.dart';
import 'package:flutter/material.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Color"),
              Row(
                children: [
                  ColorPicker(
                    color: Color(0xF0F0F0F0),
                    isSelected: true,
                    ),
                    ColorPicker(
                      color: Color(0xFF3D82AE) ,
                      isSelected: false
                      ),
                    ColorPicker(
                      color: Color(0xFF989493) ,
                      isSelected: false
                      )
                ],
              )
            ],
          ),
        ),
        Expanded(
          // other way to showing and modifying the text
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Size",
                style: TextStyle(color: textColor),
              ),
              RichText(
                text: TextSpan(
                  style: const TextStyle(color: textColor),
                  children: [
                    TextSpan(
                      text: "${product.size} cm",
                      style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontWeight: FontWeight.bold)
                    )
                  ]
                )
                ),
            ],
          )
          )
      ],
    );
  }
}

class ColorPicker extends StatelessWidget {
  const ColorPicker({super.key, required this.color, required this.isSelected});

  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: defaultPadding,
        right: defaultPadding
      ),
      padding:  const EdgeInsets.all(2.5),
      width: 20,
      height: 20,

      // modifikasi untk border dri ColorPicker nya
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? color : Colors.transparent
        )
      ),
 
      child: DecoratedBox( 

        // modifikasi untk ColorPicker nya
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle
        )
        ),
    );
  }
}