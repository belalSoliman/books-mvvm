import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.01),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {
                GoRouter.of(context).push('/searchView');
              },
              icon: const Icon(Icons.search_rounded)),
          const Expanded(
            child: Text(
              'Book of the week',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.menu))
        ],
      ),
    );
  }
}
