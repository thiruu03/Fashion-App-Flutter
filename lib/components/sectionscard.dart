import 'package:flutter/material.dart';

class Mytile extends StatelessWidget {
  final String text;
  const Mytile({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(7),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10).copyWith(left: 10),
        margin: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: const TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            Container(
              padding: const EdgeInsets.only(left: 35),
              alignment: Alignment.centerRight,
              child: Row(
                children: [
                  const Text(
                    "LO",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Color.fromARGB(255, 96, 96, 96),
                    ),
                  ),
                  Image.asset(
                    'assets/images/oval.png',
                    height: 50,
                    color: const Color.fromARGB(255, 96, 96, 96),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 90),
              child: const Icon(
                Icons.arrow_right_alt,
                size: 30,
              ),
            )
          ],
        ),
      ),
    );
  }
}
