import 'package:flutter/material.dart';

class SearchScreenIcon extends StatelessWidget {
  const SearchScreenIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          prefixIcon: const Icon(Icons.search),
          hintText: "Search",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
