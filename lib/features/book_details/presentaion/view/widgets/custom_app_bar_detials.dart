import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBarDetials extends StatelessWidget {
  const CustomAppBarDetials({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              icon: const Icon(
                Icons.close,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon:
                  const Icon(Icons.shopping_cart_outlined, color: Colors.white))
        ],
      ),
    );
  }
}
