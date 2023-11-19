// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String imageCard;
  final String title;
  final double fontSize;
  final void Function() press;
  const CategoryCard({
    Key? key,
    required this.imageCard,
    required this.title,
    required this.fontSize,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        // padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
                color: Color.fromARGB(255, 160, 248, 87),
                spreadRadius: .2,
                blurRadius: 4,
                offset: Offset(0, 0)),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: press,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    imageCard,
                    fit: BoxFit.contain,
                  ),
                  Center(
                    child: Text(
                      title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: fontSize,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Lato",
                        shadows: const [
                          Shadow(
                            color: Color.fromARGB(255, 50, 124, 0),
                            offset: Offset(1, 2),
                            blurRadius: 3.0,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
