import 'package:floapp/consts.dart';
import 'package:flutter/material.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({super.key});

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget> [
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            minimumSize: const Size(35, 35),
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            )
          ),
          // dami function
          onPressed: () {
            setState(() {
              if (numOfItems > 1) {
                setState(() {
                  numOfItems--;
                });
              }
            });
          },
          child: const Icon(Icons.remove)
          ),
          const SizedBox(width: defaultPadding),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Text(
              numOfItems.toString().padLeft(2, "0"),
              style: const TextStyle(
                fontSize: 18,
                color: textColor
              ),
            ),
            ),
            const SizedBox(width: defaultPadding),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                minimumSize: const Size(35, 35),
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13)
                )
              ),
              onPressed: () {
                setState(() {
                  numOfItems++;
                });
              },
              child: const Icon(Icons.add)
              ),
              // IconButton(
              //   onPressed: () {},
              //   icon: const Icon(Icons.favorite_border)
              //   )
      ],
    );
  }
}