import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:bookly/consts.dart';

class PopularBookItem extends StatelessWidget {
  const PopularBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: btnColor,
      width: MediaQuery.of(context).size.width * 0.8,
      child: Text(
        "Harry Potter and the Philosopher's Stone",
      ),
    );
  }
}
