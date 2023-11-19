import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 1),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              color: Colors.black45,
              spreadRadius: 1,
              blurRadius: 10,
            )
          ]),
      child: const TextField(
        decoration: InputDecoration(
            hintText: "Search",
            hintStyle: TextStyle(color: Colors.black),
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            border: InputBorder.none),
      ),
    );
  }
}
