import 'package:fashion_app/components/productcard.dart';
import 'package:fashion_app/components/products.dart';
import 'package:fashion_app/components/sectionscard.dart';
import 'package:flutter/material.dart';

class Mainscreen extends StatelessWidget {
  const Mainscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: SizedBox(
              child: Row(
                children: [
                  Mytile(text: "TRENDING \nPRODUCTS"),
                  Mytile(text: "METRO \nCOLLECTIONS"),
                  Mytile(text: " FLAT \n 60% OFF"),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            alignment: Alignment.centerLeft,
            child: const Text(
              "POPULAR PRODUCTS",
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
                fontSize: 19,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return Productcard(
                  productname: product['name'],
                  price: product['price'],
                  image: product['imageurul'],
                  stock: product['stock'],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
