import 'package:bookly/features/home/presentaion/views/widgets/book_item.dart';
import 'package:flutter/material.dart';

class ListViewDisplay extends StatelessWidget {
  const ListViewDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.18 * 1.2,
      child: ListView.builder(
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return const Padding(
            padding: EdgeInsets.all(8.0),
            child: ListViewItem(),
          );
        },
      ),
    );
  }
}
